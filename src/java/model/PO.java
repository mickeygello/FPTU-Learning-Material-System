
package model;

public class PO {
    private int cloName;
    private String cloDetails;
    private String loDetails;
    private int syllabusID;

    public PO() {
    }

    public PO(int cloName, String cloDetails, String loDetails, int syllabusID) {
        this.cloName = cloName;
        this.cloDetails = cloDetails;
        this.loDetails = loDetails;
        this.syllabusID = syllabusID;
    }

    public PO(int cloName, String cloDetails, String loDetails) {
        this.cloName = cloName;
        this.cloDetails = cloDetails;
        this.loDetails = loDetails;
    }

    public int getCloName() {
        return cloName;
    }

    public void setCloName(int cloName) {
        this.cloName = cloName;
    }

    public String getCloDetails() {
        return cloDetails;
    }

    public void setCloDetails(String cloDetails) {
        this.cloDetails = cloDetails;
    }

    public String getLoDetails() {
        return loDetails;
    }

    public void setLoDetails(String loDetails) {
        this.loDetails = loDetails;
    }

    public int getSyllabusID() {
        return syllabusID;
    }

    public void setSyllabusID(int syllabusID) {
        this.syllabusID = syllabusID;
    }

    @Override
    public String toString() {
        return "PO{" + "cloName=" + cloName + ", cloDetails=" + cloDetails + ", loDetails=" + loDetails + ", syllabusID=" + syllabusID + '}';
    }
 
}
