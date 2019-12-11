package mapper;

//操作 MyBatis 的接口
public interface takeawayMapper {

    int selectUserCount();
    int selectUserByUsers(String phone);
    void insertUser(String phone);
    int selectUserType(String phone);
}
