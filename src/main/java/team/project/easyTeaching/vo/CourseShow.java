package team.project.easyTeaching.vo;

/**
 * @Classname CourseShow
 * @Description TODO
 * @Created by 颜
 */

public class CourseShow {
    private Integer courseId;

    private String courseName;

    private String courseDesc;

    private Integer termId;

    private String termName;

    private Integer teacherId;

    public CourseShow(Integer courseId, String courseName, String courseDesc, Integer termId, String termName, Integer teacherId) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.courseDesc = courseDesc;
        this.termId = termId;
        this.termName = termName;
        this.teacherId = teacherId;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
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
        this.termName = termName;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }
}
