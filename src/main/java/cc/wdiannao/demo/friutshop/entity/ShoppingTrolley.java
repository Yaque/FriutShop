package cc.wdiannao.demo.friutshop.entity;

public class ShoppingTrolley {
    private int id;
    private String phoneNumber;
    private String fruits;
    private String packingBoxs;
    private String packingBags;
    private String yoghurts;
    private double sumPrice;
    private String message;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getFruits() {
        return fruits;
    }

    public void setFruits(String fruits) {
        this.fruits = fruits;
    }

    public String getPackingBoxs() {
        return packingBoxs;
    }

    public void setPackingBoxs(String packingBoxs) {
        this.packingBoxs = packingBoxs;
    }

    public String getPackingBags() {
        return packingBags;
    }

    public void setPackingBags(String packingBags) {
        this.packingBags = packingBags;
    }

    public String getYoghurts() {
        return yoghurts;
    }

    public void setYoghurts(String yoghurts) {
        this.yoghurts = yoghurts;
    }

    public double getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(double sumPrice) {
        this.sumPrice = sumPrice;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "ShoppingTrolley{" +
                "id=" + id +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", fruits='" + fruits + '\'' +
                ", packingBoxs='" + packingBoxs + '\'' +
                ", packingBags='" + packingBags + '\'' +
                ", yoghurts='" + yoghurts + '\'' +
                ", sumPrice=" + sumPrice +
                ", message='" + message + '\'' +
                '}';
    }
}
