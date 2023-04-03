package model;

public class Syllabus {
    private int sID;
    private String sName;
    private String sEnglish;
    private int noCredit;
    private String degreeLevel;
    private String timeAllocation;
    private String preRequisite;
    private String description;
    private String studentTask;
    private String tools;
    private int scoringScale;
    private String decisionNo;
    private String isApproved;
    private String note;
    private int minAvgMarkToPass;
    private String isActive;
    private String approvedDate;
    private String subjectCode;
    private DecisionNo decisionNo1;

    public Syllabus() {
    }

    public Syllabus(int sID, String sName, String sEnglish, int noCredit, String degreeLevel, String timeAllocation, String preRequisite, String description, String studentTask, String tools, int scoringScale, String decisionNo, String isApproved, String note, int minAvgMarkToPass, String isActive, String approvedDate, String subjectCode) {
        this.sID = sID;
        this.sName = sName;
        this.sEnglish = sEnglish;
        this.noCredit = noCredit;
        this.degreeLevel = degreeLevel;
        this.timeAllocation = timeAllocation;
        this.preRequisite = preRequisite;
        this.description = description;
        this.studentTask = studentTask;
        this.tools = tools;
        this.scoringScale = scoringScale;
        this.decisionNo = decisionNo;
        this.isApproved = isApproved;
        this.note = note;
        this.minAvgMarkToPass = minAvgMarkToPass;
        this.isActive = isActive;
        this.approvedDate = approvedDate;
        this.subjectCode = subjectCode;
    }

    public Syllabus(int sID, String sName, String sEnglish, int noCredit, String degreeLevel, String timeAllocation, String preRequisite, String description, String studentTask, String tools, int scoringScale, String decisionNo, String isApproved, String note, int minAvgMarkToPass, String isActive, String approvedDate, String subjectCode, DecisionNo decisionNo1) {
        this.sID = sID;
        this.sName = sName;
        this.sEnglish = sEnglish;
        this.noCredit = noCredit;
        this.degreeLevel = degreeLevel;
        this.timeAllocation = timeAllocation;
        this.preRequisite = preRequisite;
        this.description = description;
        this.studentTask = studentTask;
        this.tools = tools;
        this.scoringScale = scoringScale;
        this.decisionNo = decisionNo;
        this.isApproved = isApproved;
        this.note = note;
        this.minAvgMarkToPass = minAvgMarkToPass;
        this.isActive = isActive;
        this.approvedDate = approvedDate;
        this.subjectCode = subjectCode;
        this.decisionNo1 = decisionNo1;
    }

    public Syllabus(int sID, String subjectCode, String sName, String isActive, String isApproved, String decisionNo) {
        this.sID = sID;
        this.subjectCode = subjectCode;
        this.sName = sName;
        this.isActive = isActive;
        this.isApproved = isApproved;
        this.decisionNo = decisionNo;    
    }

    public int getsID() {
        return sID;
    }

    public void setsID(int sID) {
        this.sID = sID;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getsEnglish() {
        return sEnglish;
    }

    public void setsEnglish(String sEnglish) {
        this.sEnglish = sEnglish;
    }

    public int getNoCredit() {
        return noCredit;
    }

    public void setNoCredit(int noCredit) {
        this.noCredit = noCredit;
    }

    public String getDegreeLevel() {
        return degreeLevel;
    }

    public void setDegreeLevel(String degreeLevel) {
        this.degreeLevel = degreeLevel;
    }

    public String getTimeAllocation() {
        return timeAllocation;
    }

    public void setTimeAllocation(String timeAllocation) {
        this.timeAllocation = timeAllocation;
    }

    public String getPreRequisite() {
        return preRequisite;
    }

    public void setPreRequisite(String preRequisite) {
        this.preRequisite = preRequisite;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStudentTask() {
        return studentTask;
    }

    public void setStudentTask(String studentTask) {
        this.studentTask = studentTask;
    }

    public String getTools() {
        return tools;
    }

    public void setTools(String tools) {
        this.tools = tools;
    }

    public int getScoringScale() {
        return scoringScale;
    }

    public void setScoringScale(int scoringScale) {
        this.scoringScale = scoringScale;
    }

    public String getDecisionNo() {
        return decisionNo;
    }

    public void setDecisionNo(String decisionNo) {
        this.decisionNo = decisionNo;
    }

    public String getIsApproved() {
        return isApproved;
    }

    public void setIsApproved(String isApproved) {
        this.isApproved = isApproved;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getMinAvgMarkToPass() {
        return minAvgMarkToPass;
    }

    public void setMinAvgMarkToPass(int minAvgMarkToPass) {
        this.minAvgMarkToPass = minAvgMarkToPass;
    }

    public String getIsActive() {
        return isActive;
    }

    public void setIsActive(String isActive) {
        this.isActive = isActive;
    }

    public String getApprovedDate() {
        return approvedDate;
    }

    public void setApprovedDate(String approvedDate) {
        this.approvedDate = approvedDate;
    }

    public String getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }

    @Override
    public String toString() {
        return "Syllabus{" + "sID=" + sID + ", sName=" + sName + ", sEnglish=" + sEnglish + ", noCredit=" + noCredit + ", degreeLevel=" + degreeLevel + ", timeAllocation=" + timeAllocation + ", preRequisite=" + preRequisite + ", description=" + description + ", studentTask=" + studentTask + ", tools=" + tools + ", scoringScale=" + scoringScale + ", decisionNo=" + decisionNo + ", isApproved=" + isApproved + ", note=" + note + ", minAvgMarkToPass=" + minAvgMarkToPass + ", isActive=" + isActive + ", approvedDate=" + approvedDate + ", subjectCode=" + subjectCode + ", decisionNo1=" + decisionNo1 + '}';
    }

    
    
}
