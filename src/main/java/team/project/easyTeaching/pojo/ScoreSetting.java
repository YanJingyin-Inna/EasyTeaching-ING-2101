package team.project.easyTeaching.pojo;

import java.util.Date;

public class ScoreSetting {
    private Integer settingId;

    private String SettingJson;

    private Integer courseId;

    private Integer classId;

    private Date createTime;

    private Date updatetime;

    public ScoreSetting(Integer settingId, String SettingJson, Integer courseId, Integer classId, Date createTime, Date updatetime) {
        this.settingId = settingId;
        this.SettingJson = SettingJson;
        this.courseId = courseId;
        this.classId = classId;
        this.createTime = createTime;
        this.updatetime = updatetime;
    }

    public ScoreSetting() {
        super();
    }

    public Integer getSettingId() {
        return settingId;
    }

    public void setSettingId(Integer settingId) {
        this.settingId = settingId;
    }

    public String getSettingJson() {
        return SettingJson;
    }

    public void setSettingJson(String SettingJson) {
        this.SettingJson = SettingJson == null ? null : SettingJson.trim();
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