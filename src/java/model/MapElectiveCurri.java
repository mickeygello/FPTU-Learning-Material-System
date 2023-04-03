/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class MapElectiveCurri {
    int id;
int curriId;
int electiveId;

    public MapElectiveCurri(int id, int curriId, int electiveId) {
        this.id = id;
        this.curriId = curriId;
        this.electiveId = electiveId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCurriId() {
        return curriId;
    }

    public void setCurriId(int curriId) {
        this.curriId = curriId;
    }

    public int getElectiveId() {
        return electiveId;
    }

    public void setElectiveId(int electiveId) {
        this.electiveId = electiveId;
    }

}
