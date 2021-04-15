package team.project.easyTeaching.pojo;

import java.util.Date;

public class Class {
    private Integer classId;

    private String className;

    private String classCode;

    private Integer courseId;

    private Date createTime;

    private Date updateTime;

    public Class(Integer classId, String className, String classCode, Integer courseId, Date createTime, Date updateTime) {
        this.classId = classId;
        this.className = className;
        this.classCode = classCode;
        this.courseId = courseId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Class() {
        super();
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className == null ? null : className.trim();
    }

    public String getClassCode() {
        return classCode;
    }

    public void setClassCode(String classCode) {
        this.classCode = classCode == null ? null : classCode.trim();
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
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