package team.project.easyTeaching.pojo;

import java.util.Date;

public class PaperContent {
    private Integer paperQid;

    private Integer questionId;

    private Integer questionLevel;

    private Integer questionScore;

    private Integer paperId;

    private Date createTime;

    private Date updatetime;

    public PaperContent(Integer paperQid, Integer questionId, Integer questionLevel, Integer questionScore, Integer paperId, Date createTime, Date updatetime) {
        this.paperQid = paperQid;
        this.questionId = questionId;
        this.questionLevel = questionLevel;
        this.questionScore = questionScore;
        this.paperId = paperId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public PaperContent() {
        super();
    }

    public Integer getPaperQid() {
        return paperQid;
    }

    public void setPaperQid(Integer paperQid) {
        this.paperQid = paperQid;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getQuestionLevel() {
        return questionLevel;
    }

    public void setQuestionLevel(Integer questionLevel) {
        this.questionLevel = questionLevel;
    }

    public Integer getQuestionScore() {
        return questionScore;
    }

    public void setQuestionScore(Integer questionScore) {
        this.questionScore = questionScore;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
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