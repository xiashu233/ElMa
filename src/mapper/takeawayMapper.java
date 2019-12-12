package mapper;

import entity.Business;

import java.util.List;

//操作 MyBatis 的接口
public interface takeawayMapper {

    int selectUserCount();
    int selectUserByUsers(String phone);
    void insertUser(String phone);
    int selectUserType(String phone);
    List<Business> selectAllBusiness();
    Business selectBusinessByPhone(String phone);
}
