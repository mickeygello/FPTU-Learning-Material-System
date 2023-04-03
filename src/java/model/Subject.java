/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Subject {
//    id int NOT NULL AUTO_INCREMENT,
//  subject_code varchar(10) NOT NULL,
//  subject_name varchar(100) NOT NULL,
//  description longtext,
//  no_credit int NOT NULL,
//  degree_level varchar(50) NOT NULL,
//  combo_id int NOT NULL,
//  status tinyint DEFAULT NULL,
//  PRIMARY KEY (id),
//  UNIQUE KEY subject_code_UNIQUE (subject_code)
    
    private int id;
    private String subject_Code;
    private String subject_Name;
    private String description;
    private int no_credit;
    private String degree_level;
    private int combo_id;
    private boolean status;

    public Subject() {
    }

    public Subject(int id, String subject_Code, String subject_Name, String description, int no_credit, String degree_level, int combo_id, boolean status) {
        this.id = id;
        this.subject_Code = subject_Code;
        this.subject_Name = subject_Name;
        this.description = description;
        this.no_credit = no_credit;
        this.degree_level = degree_level;
        this.combo_id = combo_id;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject_Code() {
        return subject_Code;
    }

    public void setSubject_Code(String subject_Code) {
        this.subject_Code = subject_Code;
    }

    public String getSubject_Name() {
        return subject_Name;
    }

    public void setSubject_Name(String subject_Name) {
        this.subject_Name = subject_Name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getNo_credit() {
        return no_credit;
    }

    public void setNo_credit(int no_credit) {
        this.no_credit = no_credit;
    }

    public String getDegree_level() {
        return degree_level;
    }

    public void setDegree_level(String degree_level) {
        this.degree_level = degree_level;
    }

    public int getCombo_id() {
        return combo_id;
    }

    public void setCombo_id(int combo_id) {
        this.combo_id = combo_id;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Subject{" + "id=" + id + ", subject_Code=" + subject_Code + ", subject_Name=" + subject_Name + ", description=" + description + ", no_credit=" + no_credit + ", degree_level=" + degree_level + ", combo_id=" + combo_id + ", status=" + status + '}';
    }
    
}
