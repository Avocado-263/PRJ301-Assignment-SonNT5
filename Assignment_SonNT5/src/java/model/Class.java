/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author thanh
 */
public class Class {
    private String id;
    private String name;
    private ArrayList<Student> student = new ArrayList<>();

    public ArrayList<Student> getStudent() {
        return student;
    }

    public void setStudent(ArrayList<Student> student) {
        this.student = student;
    }
   

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
