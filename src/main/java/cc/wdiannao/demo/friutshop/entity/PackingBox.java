package cc.wdiannao.demo.friutshop.entity;

public class PackingBox {
    private int id;
    private String classification;
    private String name;
    private String capacity;
    private double price;
    private String recycle;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getClassification() {
        return classification;
    }

    public void setClassification(String classification) {
        this.classification = classification;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getRecycle() {
        return recycle;
    }

    public void setRecycle(String recycle) {
        this.recycle = recycle;
    }

    @Override
    public String toString() {
        return classification + ',' + name + ',' + capacity + ',' + price + "元" + "," + recycle + ',';
    }
}
