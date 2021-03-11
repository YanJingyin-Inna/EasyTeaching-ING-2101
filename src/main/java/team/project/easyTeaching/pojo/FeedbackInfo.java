package team.project.easyTeaching.pojo;

import java.util.Date;

public class FeedbackInfo {
    private Integer fbId;

    private Integer courseId;

    private Integer tId;

    private String fbName;

    private String fbiTel;

    private Date createTime;

    private String content;

    public FeedbackInfo(Integer fbId, Integer courseId, Integer tId, String fbName, String fbiTel, Date createTime, String content) {
        this.fbId = fbId;
        this.courseId = courseId;
        this.tId = tId;
        this.fbName = fbName;
        this.fbiTel = fbiTel;
        this.createTime = createTime;
        this.content = content;
    }

    public FeedbackInfo() {
        super();
    }

    public Integer getFbId() {
        return fbId;
    }

    public void setFbId(Integer fbId) {
        this.fbId = fbId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String getFbName() {
        return fbName;
    }

    public void setFbName(String fbName) {
        this.fbName = fbName == null ? null : fbName.trim();
    }

    public String getFbiTel() {
        return fbiTel;
    }

    public void setFbiTel(String fbiTel) {
        this.fbiTel = fbiTel == null ? null : fbiTel.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}