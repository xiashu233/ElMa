package servlet;

import entity.Business;
import entity.Goods;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/FoodInfoServlet")
public class FoodInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        String foodId = request.getParameter("foodId");
        request.setAttribute("foodId",foodId);
//        out.write(foodId);
        Business business = new Business();
        business.setBnsName("回头客餐厅");
        business.setBnsImagePath("/images/回头客餐厅/dianputouxiang.jpeg");
        business.setBnsStartPrice(8.00);
        business.setBnsDeliveryPrice(1.00);

        request.setAttribute("business",business);
        request.getRequestDispatcher("/pages/merchantInfo.jsp").forward(request, response);
    }
}
