package model;

public class DecisionNo {
    private String decision_no;
    private String decisionName;
    private String approvedDate;
    private String note;
    private String createDate;
    private String fileName;

    public DecisionNo() {
    }

    public DecisionNo(String decision_no, String decisionName, String approvedDate, String note, String createDate, String fileName) {
        this.decision_no = decision_no;
        this.decisionName = decisionName;
        this.approvedDate = approvedDate;
        this.note = note;
        this.createDate = createDate;
        this.fileName = fileName;
    }

    public String getDecision_no() {
        return decision_no;
    }

    public void setDecision_no(String decision_no) {
        this.decision_no = decision_no;
    }

    public String getDecisionName() {
        return decisionName;
    }

    public void setDecisionName(String decisionName) {
        this.decisionName = decisionName;
    }

    public String getApprovedDate() {
        return approvedDate;
    }

    public void setApprovedDate(String approvedDate) {
        this.approvedDate = approvedDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    @Override
    public String toString() {
        return "DecisionNo{" + "decision_no=" + decision_no + ", decisionName=" + decisionName + ", approvedDate=" + approvedDate + ", note=" + note + ", createDate=" + createDate + ", fileName=" + fileName + '}';
    }
    
}
