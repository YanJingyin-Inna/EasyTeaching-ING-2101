package team.project.easyTeaching.pojo;

import java.util.Date;

public class VoteOption {
    private Integer optionId;

    private String optionDesc;

    private Integer optionNumbers;

    private Integer voteId;

    private Date createTime;

    private Date updatetime;

    public VoteOption(Integer optionId, String optionDesc, Integer optionNumbers, Integer voteId, Date createTime, Date updatetime) {
        this.optionId = optionId;
        this.optionDesc = optionDesc;
        this.optionNumbers = optionNumbers;
        this.voteId = voteId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public VoteOption() {
        super();
    }

    public Integer getOptionId() {
        return optionId;
    }

    public void setOptionId(Integer optionId) {
        this.optionId = optionId;
    }

    public String getOptionDesc() {
        return optionDesc;
    }

    public void setOptionDesc(String optionDesc) {
        this.optionDesc = optionDesc == null ? null : optionDesc.trim();
    }

    public Integer getOptionNumbers() {
        return optionNumbers;
    }

    public void setOptionNumbers(Integer optionNumbers) {
        this.optionNumbers = optionNumbers;
    }

    public Integer getVoteId() {
        return voteId;
    }

    public void setVoteId(Integer voteId) {
        this.voteId = voteId;
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