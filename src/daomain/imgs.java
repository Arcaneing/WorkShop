package daomain;

public class imgs {
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public imgs() {
    }

    public imgs(String path, Integer id) {
        this.path = path;
        this.id = id;
    }

    @Override
    public String toString() {
        return "imgs{" +
                "path='" + path + '\'' +
                ", id=" + id +
                '}';
    }

    String path;
    Integer id;
}
