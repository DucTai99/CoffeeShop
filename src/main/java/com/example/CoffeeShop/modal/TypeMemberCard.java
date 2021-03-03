package com.example.CoffeeShop.modal;

public class TypeMemberCard {
    private int id;
    private String typeName;

    public TypeMemberCard() {
    }

    public TypeMemberCard(int id, String typeName) {
        this.id = id;
        this.typeName = typeName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
