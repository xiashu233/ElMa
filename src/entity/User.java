package entity;

public class User {
    private String phone;
    private int isBusiness;

    public User(String phone, int isBusiness) {
        this.phone = phone;
        this.isBusiness = isBusiness;
    }

    public User() {
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getIsBusiness() {
        return isBusiness;
    }

    public void setIsBusiness(int isBusiness) {
        this.isBusiness = isBusiness;
    }
}
