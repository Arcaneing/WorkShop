package daomain;

public class cart {
    Integer id;
    Integer user_id;
    Integer goods_id;
    Integer num;

    public cart() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Integer getGoods_id() {
        return goods_id;
    }

    public void setGoods_id(Integer goods_id) {
        this.goods_id = goods_id;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "cart{" +
                "id=" + id +
                ", user_id=" + user_id +
                ", goods_id=" + goods_id +
                ", num=" + num +
                '}';
    }
}
