/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL
 */
public class Category {
    private int id;
    private String categoryName;
    private String categoryDetail;
    private int status;

    public Category() {
    }

    public Category(int id, String categoryName, String categoryDetail, int status) {
        this.id = id;
        this.categoryName = categoryName;
        this.categoryDetail = categoryDetail;
        this.status = status;
    }

     public Category(int id, String categoryName, int status) {
        this.id = id;
        this.categoryName = categoryName;
        this.categoryDetail = categoryDetail;
        this.status = status;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryDetail() {
        return categoryDetail;
    }

    public void setCategoryDetail(String categoryDetail) {
        this.categoryDetail = categoryDetail;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", categoryName=" + categoryName + ", categoryDetail=" + categoryDetail + ", status=" + status + '}';
    }
    
    
}
