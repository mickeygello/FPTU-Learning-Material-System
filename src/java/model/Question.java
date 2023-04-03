
package model;

public class Question {
    private int qid;
    private int sessionNo;
    private String qName;
    private String qDetail;
    private int syllabusID;

    public Question() {
    }

    public Question(int qid, int sessionNo, String qName, String qDetail, int syllabusID) {
        this.qid = qid;
        this.sessionNo = sessionNo;
        this.qName = qName;
        this.qDetail = qDetail;
        this.syllabusID = syllabusID;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    public int getSessionNo() {
        return sessionNo;
    }

    public void setSessionNo(int sessionNo) {
        this.sessionNo = sessionNo;
    }

    public String getqName() {
        return qName;
    }

    public void setqName(String qName) {
        this.qName = qName;
    }

    public String getqDetail() {
        return qDetail;
    }

    public void setqDetail(String qDetail) {
        this.qDetail = qDetail;
    }

    public int getSyllabusID() {
        return syllabusID;
    }

    public void setSyllabusID(int syllabusID) {
        this.syllabusID = syllabusID;
    }

    @Override
    public String toString() {
        return "Question{" + "qid=" + qid + ", sessionNo=" + sessionNo + ", qName=" + qName + ", qDetail=" + qDetail + ", syllabusID=" + syllabusID + '}';
    }
    
    
}
