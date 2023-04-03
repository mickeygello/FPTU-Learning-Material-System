/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author tient
 */
public class Session {
    private int sesid;
    private int syllabusID;
    private String topic;
    private String learning_teaching_type;
    private String lO;
    private String iTU;
    private String studentMaterial;
    private String download;
    private String studentTask;
    private String urls;
   private Syllabus syllabusID2;
   private int status;
   private String filePath;
   
   
   
   
    public Session() {
    }

    
    public Session(int sesid, int syllabusID, String topic, String learning_teaching_type, String lO, String iTU, String studentMaterial, String download, String studentTask, String urls, int status) {
        this.sesid = sesid;
        this.syllabusID = syllabusID;
        this.topic = topic;
        this.learning_teaching_type = learning_teaching_type;
        this.lO = lO;
        this.iTU = iTU;
        this.studentMaterial = studentMaterial;
        this.download = download;
        this.studentTask = studentTask;
        this.urls = urls;
        this.status = status;
    }
    
     public Session(int sesid, Syllabus syllabusID2, String topic, String learning_teaching_type, String lO, String iTU, String studentMaterial, String download, String studentTask, String urls, int status) {
        this.sesid = sesid;
        this.syllabusID2 = syllabusID2;
        this.topic = topic;
        this.learning_teaching_type = learning_teaching_type;
        this.lO = lO;
        this.iTU = iTU;
        this.studentMaterial = studentMaterial;
        this.download = download;
        this.studentTask = studentTask;
        this.urls = urls;
        this.status = status;
    }
      public Session(int sesid, Syllabus syllabusID2, String topic, String learning_teaching_type, String lO, String iTU, String studentMaterial, String download, String studentTask, String urls, int status, String filePath) {
        this.sesid = sesid;
        this.syllabusID2 = syllabusID2;
        this.topic = topic;
        this.learning_teaching_type = learning_teaching_type;
        this.lO = lO;
        this.iTU = iTU;
        this.studentMaterial = studentMaterial;
        this.download = download;
        this.studentTask = studentTask;
        this.urls = urls;
        this.status = status;
        this.filePath = filePath;
    }
    
    public Session(int syllabusID, String topic, String learning_teaching_type, String lO, String iTU, String studentMaterial, String download, String studentTask, String urls, int status) {
        this.syllabusID = syllabusID;
        this.topic = topic;
        this.learning_teaching_type = learning_teaching_type;
       this.lO = lO;
        this.iTU = iTU;
        this.studentMaterial = studentMaterial;
        this.download = download;
        this.studentTask = studentTask;
        this.urls = urls;
        this.status = status;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public int getSesid() {
        return sesid;
    }

    public void setSesid(int sesid) {
        this.sesid = sesid;
    }

    public int getSyllabusID() {
        return syllabusID;
    }

    public void setSyllabusID(int syllabusID) {
        this.syllabusID = syllabusID;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getLearning_teaching_type() {
        return learning_teaching_type;
    }

    public void setLearning_teaching_type(String learning_teaching_type) {
        this.learning_teaching_type = learning_teaching_type;
    }

    public String getlO() {
        return lO;
    }

    public void setlO(String lO) {
        this.lO = lO;
    }

    public String getiTU() {
        return iTU;
    }

    public void setiTU(String iTU) {
        this.iTU = iTU;
    }

  

    public String getStudentMaterial() {
        return studentMaterial;
    }

    public void setStudentMaterial(String studentMaterial) {
        this.studentMaterial = studentMaterial;
    }

    public String getDownload() {
        return download;
    }

    public void setDownload(String download) {
        this.download = download;
    }

    public String getStudentTask() {
        return studentTask;
    }

    public void setStudentTask(String studentTask) {
        this.studentTask = studentTask;
    }

    public String getUrls() {
        return urls;
    }

    public void setUrls(String urls) {
        this.urls = urls;
    }

    public Syllabus getSyllabusID2() {
        return syllabusID2;
    }

    public void setSyllabusID2(Syllabus syllabusID2) {
        this.syllabusID2 = syllabusID2;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Session{" + "sesid=" + sesid + ", syllabusID=" + syllabusID + ", topic=" + topic + ", learning_teaching_type=" + learning_teaching_type + ", lO=" + lO + ", iTU=" + iTU + ", studentMaterial=" + studentMaterial + ", download=" + download + ", studentTask=" + studentTask + ", urls=" + urls + ", syllabusID2=" + syllabusID2 + ", status=" + status + '}';
    }

    
    
}