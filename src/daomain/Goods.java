package daomain;

import java.io.Serializable;

public class Goods implements Serializable {
    int id;
    String name;
    float price;
    String label;
    String img;

    public Goods() {
    }

    public Goods(int id, String name, float price, String label, String img) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.label = label;
        this.img = img;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", label='" + label + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
