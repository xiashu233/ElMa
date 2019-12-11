package entity;

public class Goods {
    private int goodsID;
    private String bnsPhone;
    private String goodName;
    private String goodType;
    private double goodPrice;
    private int sellCount;
    private double foodScore;

    public Goods() {
    }

    public Goods(int goodsID, String bnsPhone, String goodName, String goodType, double goodPrice, int sellCount, double foodScore) {
        this.goodsID = goodsID;
        this.bnsPhone = bnsPhone;
        this.goodName = goodName;
        this.goodType = goodType;
        this.goodPrice = goodPrice;
        this.sellCount = sellCount;
        this.foodScore = foodScore;
    }

    public int getGoodsID() {
        return goodsID;
    }

    public void setGoodsID(int goodsID) {
        this.goodsID = goodsID;
    }

    public String getBnsPhone() {
        return bnsPhone;
    }

    public void setBnsPhone(String bnsPhone) {
        this.bnsPhone = bnsPhone;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getGoodType() {
        return goodType;
    }

    public void setGoodType(String goodType) {
        this.goodType = goodType;
    }

    public double getGoodPrice() {
        return goodPrice;
    }

    public void setGoodPrice(double goodPrice) {
        this.goodPrice = goodPrice;
    }

    public int getSellCount() {
        return sellCount;
    }

    public void setSellCount(int sellCount) {
        this.sellCount = sellCount;
    }

    public double getFoodScore() {
        return foodScore;
    }

    public void setFoodScore(double foodScore) {
        this.foodScore = foodScore;
    }
}

