package test;

import mapper.takeawayMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.IOException;
import java.io.Reader;

public class test {
    public static void main(String[] args) throws IOException {
        selectUserCount();
    }

    public static void selectUserCount() throws IOException {
        Reader reader = Resources.getResourceAsReader("conf.xml");
        SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(reader);
        SqlSession session = sessionFactory.openSession();
        takeawayMapper takeawayMapper = session.getMapper(mapper.takeawayMapper.class);
        int count = takeawayMapper.selectUserCount();
        System.out.println(count);

    }
}
