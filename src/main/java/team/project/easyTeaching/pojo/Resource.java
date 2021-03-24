package team.project.easyTeaching.pojo;

import java.util.Date;

public class Resource {
    private Integer resourceId;

    private String resourcePath;

    private Integer uploadId;

    private Integer courseId;

    private Integer classId;

    private Date createTime;

    private Date updateTime;

    public Resource(Integer resourceId, String resourcePath, Integer uploadId, Integer courseId, Integer classId, Date createTime, Date updateTime) {
        this.resourceId = resourceId;
        this.resourcePath = resourcePath;
        this.uploadId = uploadId;
        this.courseId = courseId;
        this.classId = classId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Resource() {
        super();
    }

    public Integer getResourceId() {
        return resourceId;
    }

    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }

    public String getResourcePath() {
        return resourcePath;
    }

    public void setResourcePath(String resourcePath) {
        this.resourcePath = resourcePath == null ? null : resourcePath.trim();
    }

    public Integer getUploadId() {
        return uploadId;
    }

    public void setUploadId(Integer uploadId) {
        this.uploadId = uploadId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
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