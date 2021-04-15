package team.project.easyTeaching.pojo;

import java.util.Date;

public class Relation {
    private Integer relationId;

    private Integer classId;

    private Integer studentId;

    private Date createTime;

    private Date updateTime;

    public Relation(Integer relationId, Integer classId, Integer studentId, Date createTime, Date updateTime) {
        this.relationId = relationId;
        this.classId = classId;
        this.studentId = studentId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Relation() {
        super();
    }

    public Integer getRelationId() {
        return relationId;
    }

    public void setRelationId(Integer relationId) {
        this.relationId = relationId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
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