/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TUF GAMING
 */
public class PreRequisite {
    private  int id;
    private String sjCode;
    private String reqSubject;
    private String descriptions;

    public PreRequisite() {
    }

    public PreRequisite(int id, String sjCode, String reqSubject, String descriptions) {
        this.id = id;
        this.sjCode = sjCode;
        this.reqSubject = reqSubject;
        this.descriptions = descriptions;
    }

    public int getId() {
        return id;
    }

    public String getSjCode() {
        return sjCode;
    }

    public String getReqSubject() {
        return reqSubject;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setSjCode(String sjCode) {
        this.sjCode = sjCode;
    }

    public void setReqSubject(String reqSubject) {
        this.reqSubject = reqSubject;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    @Override
    public String toString() {
        return "PreRequisite{" + "id=" + id + ", sjCode=" + sjCode + ", reqSubject=" + reqSubject + ", descriptions=" + descriptions + '}';
    }

    
 
    
}
