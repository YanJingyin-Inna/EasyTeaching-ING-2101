package team.project.easyTeaching.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class TestResult {
    private Integer resultId;

    private String stuAnswer;

    private BigDecimal getScore;

    private BigDecimal allScore;

    private Integer studentId;

    private Integer testId;

    private Integer questionId;

    private Date createTime;

    private Date updatetime;

    public TestResult(Integer resultId, String stuAnswer, BigDecimal getScore, BigDecimal allScore, Integer studentId, Integer testId, Integer questionId, Date createTime, Date updatetime) {
        this.resultId = resultId;
        this.stuAnswer = stuAnswer;
        this.getScore = getScore;
        this.allScore = allScore;
        this.studentId = studentId;
        this.testId = testId;
        this.questionId = questionId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public TestResult() {
        super();
    }

    public Integer getResultId() {
        return resultId;
    }

    public void setResultId(Integer resultId) {
        this.resultId = resultId;
    }

    public String getStuAnswer() {
        return stuAnswer;
    }

    public void setStuAnswer(String stuAnswer) {
        this.stuAnswer = stuAnswer == null ? null : stuAnswer.trim();
    }

    public BigDecimal getGetScore() {
        return getScore;
    }

    public void setGetScore(BigDecimal getScore) {
        this.getScore = getScore;
    }

    public BigDecimal getAllScore() {
        return allScore;
    }

    public void setAllScore(BigDecimal allScore) {
        this.allScore = allScore;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
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