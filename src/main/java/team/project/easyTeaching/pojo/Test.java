package team.project.easyTeaching.pojo;

import java.util.Date;

public class Test {
    private Integer testId;

    private String testName;

    private String testDesc;

    private Integer testScore;

    private Integer testLength;

    private Date openTime;

    private Date showTime;

    private Date availableTime;

    private Integer paperId;

    private Integer classId;

    private Date createTime;

    private Date updatetime;

    public Test(Integer testId, String testName, String testDesc, Integer testScore, Integer testLength, Date openTime, Date showTime, Date availableTime, Integer paperId, Integer classId, Date createTime, Date updatetime) {
        this.testId = testId;
        this.testName = testName;
        this.testDesc = testDesc;
        this.testScore = testScore;
        this.testLength = testLength;
        this.openTime = openTime;
        this.showTime = showTime;
        this.availableTime = availableTime;
        this.paperId = paperId;
        this.classId = classId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public Test() {
        super();
    }

    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName == null ? null : testName.trim();
    }

    public String getTestDesc() {
        return testDesc;
    }

    public void setTestDesc(String testDesc) {
        this.testDesc = testDesc == null ? null : testDesc.trim();
    }

    public Integer getTestScore() {
        return testScore;
    }

    public void setTestScore(Integer testScore) {
        this.testScore = testScore;
    }

    public Integer getTestLength() {
        return testLength;
    }

    public void setTestLength(Integer testLength) {
        this.testLength = testLength;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    public Date getShowTime() {
        return showTime;
    }

    public void setShowTime(Date showTime) {
        this.showTime = showTime;
    }

    public Date getAvailableTime() {
        return availableTime;
    }

    public void setAvailableTime(Date availableTime) {
        this.availableTime = availableTime;
    }

    public Integer getPaperId() {
        return paperId;
    }

    public void setPaperId(Integer paperId) {
        this.paperId = paperId;
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