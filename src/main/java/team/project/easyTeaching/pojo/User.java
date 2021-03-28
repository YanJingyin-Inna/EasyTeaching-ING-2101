package team.project.easyTeaching.pojo;

/**
 *
 */
public class User {
    private String username;

    private String password;

    private Integer uid;

    private String email;

    private Integer role;

    public User(String username, String password, Integer uid, String email, Integer role) {

        this.username = username;
        this.password = password;
        this.uid = uid;
        this.email = email;
        this.role = role;
    }

    public User() {
        super();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", uid=" + uid +
                ", email='" + email + '\'' +
                ", role=" + role +
                '}';
    }
}