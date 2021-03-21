package team.project.easyTeaching.pojo;

import java.util.Date;

public class User {
    private Integer uid;

    private String username;

    private String password;

    private String email;

    private Integer role;

    private Date createTime;

    private Date updatetime;

    public User(Integer uid, String username, String password, String email, Integer role, Date createTime, Date updatetime) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.role = role;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public User() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}