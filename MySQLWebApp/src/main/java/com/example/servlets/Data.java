package com.example.servlets;

public class Data {
    private int id;
    private String name;
    private String address;
    private String salary;

    // Constructor
    public Data(int id, String name, String address,String salary) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.salary = salary;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }
    public String getSalary() {
        return salary;
    }
}
