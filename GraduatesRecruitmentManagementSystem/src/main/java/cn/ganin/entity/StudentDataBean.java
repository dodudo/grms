package cn.ganin.entity;

import java.util.List;

public class StudentDataBean {
    private Student student;
    private List<Resume> resumeIdList;
    private List<StudentPositionBean> studentPostionList;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Resume> getResumeIdList() {
        return resumeIdList;
    }

    public void setResumeIdList(List<Resume> resumeIdList) {
        this.resumeIdList = resumeIdList;
    }

    public List<StudentPositionBean> getStudentPostionList() {
        return studentPostionList;
    }

    public void setStudentPostionList(List<StudentPositionBean> studentPostionList) {
        this.studentPostionList = studentPostionList;
    }
}
