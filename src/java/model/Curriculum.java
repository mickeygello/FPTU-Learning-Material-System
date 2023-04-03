/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Curriculum {

    int id;
    String name;
    String code;
    String description;
    Date decisionNo;
    int totalCredit;
    boolean active;

    public Curriculum() {
    }

    public Curriculum(int id, String name, String code, String description, Date decisionNo, int totalCredit, boolean active) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.description = description;
        this.decisionNo = decisionNo;
        this.totalCredit = totalCredit;
        this.active = active;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDecisionNo() {
        return decisionNo;
    }

    public void setDecisionNo(Date decisionNo) {
        this.decisionNo = decisionNo;
    }

    public int getTotalCredit() {
        return totalCredit;
    }

    public void setTotalCredit(int totalCredit) {
        this.totalCredit = totalCredit;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

}
