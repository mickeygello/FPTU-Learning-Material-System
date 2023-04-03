/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author dell
 */
public class MapPloCrui {
int id;
int curriId;
int ploId;

    public MapPloCrui(int id, int curriId, int ploId) {
        this.id = id;
        this.curriId = curriId;
        this.ploId = ploId;
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

    public int getPloId() {
        return ploId;
    }

    public void setPloId(int ploId) {
        this.ploId = ploId;
    }


}
