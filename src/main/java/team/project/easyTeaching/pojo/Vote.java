package team.project.easyTeaching.pojo;

import java.util.Date;

public class Vote {
    private Integer voteId;

    private String voteName;

    private Integer creatorId;

    private Integer courseId;

    private Integer classId;

    private Date createTime;

    private Date updatetime;

    public Vote(Integer voteId, String voteName, Integer creatorId, Integer courseId, Integer classId, Date createTime, Date updatetime) {
        this.voteId = voteId;
        this.voteName = voteName;
        this.creatorId = creatorId;
        this.courseId = courseId;
        this.classId = classId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public Vote() {
        super();
    }

    public Integer getVoteId() {
        return voteId;
    }

    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
    }

    public String getVoteName() {
        return voteName;
    }

    public void setVoteName(String voteName) {
        this.voteName = voteName == null ? null : voteName.trim();
    }

    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
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

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}