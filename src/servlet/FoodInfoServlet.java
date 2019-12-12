package servlet;

import entity.Business;
import entity.Goods;
import mapper.takeawayMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;

@WebServlet("/FoodInfoServlet")
public class FoodInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        PrintWriter out = response.getWriter();
        String bnsPhone = request.getParameter("bnsPhone");
        request.setAttribute("bnsPhone",bnsPhone);
        String usPhone = request.getParameter("usPhone");
        request.setAttribute("usPhone",usPhone);
        System.out.println("传递的值为：" + request.getAttribute("usPhone"));;
//        out.write(foodId);
        Reader reader = Resources.getResourceAsReader("conf.xml");
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        SqlSession session = sessionFactory.openSession();
        takeawayMapper takeawayMapper = session.getMapper(mapper.takeawayMapper.class);

        Business business = takeawayMapper.selectBusinessByPhone(bnsPhone);

        request.setAttribute("business",business);
        request.getRequestDispatcher("/pages/merchantInfo.jsp").forward(request, response);
    }
}
