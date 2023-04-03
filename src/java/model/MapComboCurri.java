/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class MapComboCurri {
    int id;
int curriId;
int comboId;

    public MapComboCurri(int id, int curriId, int comboId) {
        this.id = id;
        this.curriId = curriId;
        this.comboId = comboId;
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

    public int getComboId() {
        return comboId;
    }

    public void setComboId(int comboId) {
        this.comboId = comboId;
    }

}
