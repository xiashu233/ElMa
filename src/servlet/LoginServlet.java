package servlet;

import entity.Business;
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
import java.io.Reader;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        Reader reader = Resources.getResourceAsReader("conf.xml");
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        SqlSession session = sessionFactory.openSession();
        takeawayMapper takeawayMapper = session.getMapper(mapper.takeawayMapper.class);

        String usPhone = request.getParameter("usPhone");
        int count = takeawayMapper.selectUserByUsers(usPhone);
        if (count == 0){
            takeawayMapper.insertUser(usPhone);
        }
        session.commit();

        request.setAttribute("usPhone",usPhone);
        System.out.println(usPhone);
        if(takeawayMapper.selectUserType(usPhone) == 0){
            List<Business> businesses = takeawayMapper.selectAllBusiness();
            request.setAttribute("businesses",businesses);
            request.getRequestDispatcher("/pages/UserHome.jsp").forward(request, response);

        }


        session.close();
    }
}
