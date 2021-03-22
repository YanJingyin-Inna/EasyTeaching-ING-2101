package team.project.easyTeaching.pojo;

import java.util.Date;

public class Term {
    private Integer termId;

    private String termName;

    private String termDesc;

    private Integer teacherId;

    private Date createTime;

    private Date updateTime;

    public Term(Integer termId, String termName, String termDesc, Integer teacherId, Date createTime, Date updateTime) {
        this.termId = termId;
        this.termName = termName;
        this.termDesc = termDesc;
        this.teacherId = teacherId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Term() {
        super();
    }

    public Integer getTermId() {
        return termId;
    }

    public void setTermId(Integer termId) {
        this.termId = termId;
    }

    public String getTermName() {
        return termName;
    }

    public void setTermName(String termName) {
        this.termName = termName == null ? null : termName.trim();
    }

    public String getTermDesc() {
        return termDesc;
    }

    public void setTermDesc(String termDesc) {
        this.termDesc = termDesc == null ? null : termDesc.trim();
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
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