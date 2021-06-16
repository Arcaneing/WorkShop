package daomain;

public class User {
    int id;
    String mail,username,pw;

    static String
        elm_tables = "user",
        elm_items = "(id,name,password)",
        elm_values = "(?,?,?)";

    static String
        sql_insert = "insert into "+elm_tables+elm_items+elm_values;

    public User(int id, String username,String pw){
        this.id = id;
        this.username = username;
        this.pw = pw;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public String getMail() {
        return mail;
    }

    public String getPw() {
        return pw;
    }

    public String getUsername() {
        return username;
    }
}
