package team.project.easyTeaching.pojo;

import java.util.Date;

public class Course {
    private Integer courseId;

    private String courseName;

    private String courseDesc;

    private Integer termId;

    private Date createTime;

    private Date updateTime;

    public Course(Integer courseId, String courseName, String courseDesc, Integer termId, Date createTime, Date updateTime) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.courseDesc = courseDesc;
        this.termId = termId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Course() {
        super();
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName == null ? null : courseName.trim();
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc == null ? null : courseDesc.trim();
    }

    public Integer getTermId() {
        return termId;
    }

    public void setTermId(Integer termId) {
        this.termId = termId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}