package team.project.easyTeaching.pojo;

import java.util.Date;

public class Paper {
    private Integer paperId;

    private String paperCode;

    private String paperName;

    private String paperDesc;

    private Integer courseId;

    private Integer creatorId;

    private Date createTime;

    private Date updateTime;

    public Paper(Integer paperId, String paperCode, String paperName, String paperDesc, Integer courseId, Integer creatorId, Date createTime, Date updateTime) {
        this.paperId = paperId;
        this.paperCode = paperCode;
        this.paperName = paperName;
        this.paperDesc = paperDesc;
        this.courseId = courseId;
        this.creatorId = creatorId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Paper() {
        super();
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
    }

    public String getPaperCode() {
        return paperCode;
    }

    public void setPaperCode(String paperCode) {
        this.paperCode = paperCode == null ? null : paperCode.trim();
    }

    public String getPaperName() {
        return paperName;
    }

    public void setPaperName(String paperName) {
        this.paperName = paperName == null ? null : paperName.trim();
    }

    public String getPaperDesc() {
        return paperDesc;
    }

    public void setPaperDesc(String paperDesc) {
        this.paperDesc = paperDesc == null ? null : paperDesc.trim();
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
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