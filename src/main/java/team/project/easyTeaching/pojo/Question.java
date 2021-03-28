package team.project.easyTeaching.pojo;

import java.util.Date;

public class Question {
    private Integer questionId;

    private String questionTitle;

    private Integer courseId;

    private Integer questionType;

    private String QuestionOptionJson;

    private String QuestionAnswerJson;

    private Date createTime;

    private Date updateTime;

    public Question(Integer questionId, String questionTitle, Integer courseId, Integer questionType, String QuestionOptionJson, String QuestionAnswerJson, Date createTime, Date updateTime) {
        this.questionId = questionId;
        this.questionTitle = questionTitle;
        this.courseId = courseId;
        this.questionType = questionType;
        this.QuestionOptionJson = QuestionOptionJson;
        this.QuestionAnswerJson = QuestionAnswerJson;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Question() {
        super();
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle == null ? null : questionTitle.trim();
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public Integer getQuestionType() {
        return questionType;
    }

    public void setQuestionType(Integer questionType) {
        this.questionType = questionType;
    }

    public String getQuestionOptionJson() {
        return QuestionOptionJson;
    }

    public void setQuestionOptionJson(String QuestionOptionJson) {
        this.QuestionOptionJson = QuestionOptionJson == null ? null : QuestionOptionJson.trim();
    }

    public String getQuestionAnswerJson() {
        return QuestionAnswerJson;
    }

    public void setQuestionAnswerJson(String QuestionAnswerJson) {
        this.QuestionAnswerJson = QuestionAnswerJson == null ? null : QuestionAnswerJson.trim();
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