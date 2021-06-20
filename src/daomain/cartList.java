package daomain;

public class cartList {
    Integer cart_id;
    String goods_image;
    String goods_name;
    Integer cart_num;
    float goods_price;

    public cartList() {
    }

    public cartList(Integer cart_id, String goods_image, String goods_name, Integer cart_num, float goods_price) {
        this.cart_id = cart_id;
        this.goods_image = goods_image;
        this.goods_name = goods_name;
        this.cart_num = cart_num;
        this.goods_price = goods_price;
    }

    public Integer getCart_id() {
        return cart_id;
    }

    public void setCart_id(Integer cart_id) {
        this.cart_id = cart_id;
    }

    public String getGoods_image() {
        return goods_image;
    }

    public void setGoods_image(String goods_image) {
        this.goods_image = goods_image;
    }

    public String getGoods_name() {
        return goods_name;
    }

    public void setGoods_name(String goods_name) {
        this.goods_name = goods_name;
    }

    public Integer getCart_num() {
        return cart_num;
    }

    public void setCart_num(Integer cart_num) {
        this.cart_num = cart_num;
    }

    public float getGoods_price() {
        return goods_price;
    }

    public void setGoods_price(float goods_price) {
        this.goods_price = goods_price;
    }

    @Override
    public String toString() {
        return "cartList{" +
                "cart_id=" + cart_id +
                ", goods_image='" + goods_image + '\'' +
                ", goods_name='" + goods_name + '\'' +
                ", cart_num=" + cart_num +
                ", goods_price=" + goods_price +
                '}';
    }
}
