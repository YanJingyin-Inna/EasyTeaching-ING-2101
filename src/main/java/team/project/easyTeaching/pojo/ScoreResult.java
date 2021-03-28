package team.project.easyTeaching.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class ScoreResult {
    private Integer scoreId;

    private BigDecimal checkScore;

    private String WorkScoreJson;

    private String TestScoreJson;

    private Integer classId;

    private Integer studentId;

    private Date createTime;

    private Date updatetime;

    public ScoreResult(Integer scoreId, BigDecimal checkScore, String WorkScoreJson, String TestScoreJson, Integer classId, Integer studentId, Date createTime, Date updatetime) {
        this.scoreId = scoreId;
        this.checkScore = checkScore;
        this.WorkScoreJson = WorkScoreJson;
        this.TestScoreJson = TestScoreJson;
        this.classId = classId;
        this.studentId = studentId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public ScoreResult() {
        super();
    }

    public Integer getScoreId() {
        return scoreId;
    }

    public void setScoreId(Integer scoreId) {
        this.scoreId = scoreId;
    }

    public BigDecimal getCheckScore() {
        return checkScore;
    }

    public void setCheckScore(BigDecimal checkScore) {
        this.checkScore = checkScore;
    }

    public String getWorkScoreJson() {
        return WorkScoreJson;
    }

    public void setWorkScoreJson(String WorkScoreJson) {
        this.WorkScoreJson = WorkScoreJson == null ? null : WorkScoreJson.trim();
    }

    public String getTestScoreJson() {
        return TestScoreJson;
    }

    public void setTestScoreJson(String TestScoreJson) {
        this.TestScoreJson = TestScoreJson == null ? null : TestScoreJson.trim();
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

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}