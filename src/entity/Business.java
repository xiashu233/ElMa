package entity;

public class Business {

    private String bnsPhone;
    private String bnsName;
    private String bnsImagePath;
    private String bnsAddress;
    private String bnsAnnouncement;
    private Double bnsStartPrice;
    private String bnsDeliveryPrice;
    private Double bnsScore;

    public Business() {
    }

    public Business(String bnsPhone, String bnsName, String bnsImagePath, String bnsAddress, String bnsAnnouncement, Double bnsStartPrice, String bnsDeliveryPrice) {
        this.bnsPhone = bnsPhone;
        this.bnsName = bnsName;
        this.bnsImagePath = bnsImagePath;
        this.bnsAddress = bnsAddress;
        this.bnsAnnouncement = bnsAnnouncement;
        this.bnsStartPrice = bnsStartPrice;
        this.bnsDeliveryPrice = bnsDeliveryPrice;
    }

    public String getBnsPhone() {
        return bnsPhone;
    }

    public void setBnsPhone(String bnsPhone) {
        this.bnsPhone = bnsPhone;
    }

    public String getBnsName() {
        return bnsName;
    }

    public void setBnsName(String bnsName) {
        this.bnsName = bnsName;
    }

    public String getBnsImagePath() {
        return bnsImagePath;
    }

    public void setBnsImagePath(String bnsImagePath) {
        this.bnsImagePath = bnsImagePath;
    }

    public String getBnsAddress() {
        return bnsAddress;
    }

    public void setBnsAddress(String bnsAddress) {
        this.bnsAddress = bnsAddress;
    }

    public String getBnsAnnouncement() {
        return bnsAnnouncement;
    }

    public void setBnsAnnouncement(String bnsAnnouncement) {
        this.bnsAnnouncement = bnsAnnouncement;
    }

    public Double getBnsStartPrice() {
        return bnsStartPrice;
    }

    public void setBnsStartPrice(Double bnsStartPrice) {
        this.bnsStartPrice = bnsStartPrice;
    }

    public String getBnsDeliveryPrice() {
        return bnsDeliveryPrice;
    }

    public void setBnsDeliveryPrice(String bnsDeliveryPrice) {
        this.bnsDeliveryPrice = bnsDeliveryPrice;
    }

    public Double getBnsScore() {
        return bnsScore;
    }

    public void setBnsScore(Double bnsScore) {
        this.bnsScore = bnsScore;
    }
}
