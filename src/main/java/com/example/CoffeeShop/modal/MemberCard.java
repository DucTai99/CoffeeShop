package com.example.CoffeeShop.modal;

public class MemberCard {
    private int id;
    private int point;
    private TypeMemberCard typeMemberCard;
   private  User user;

    public MemberCard() {
    }

    public MemberCard(int id, int point, TypeMemberCard typeMemberCard,User user) {
        this.id = id;
        this.point = point;
        this.typeMemberCard = typeMemberCard;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public TypeMemberCard getTypeMemberCard() {
        return typeMemberCard;
    }

    public void setTypeMemberCard(TypeMemberCard typeMemberCard) {
        this.typeMemberCard = typeMemberCard;
    }

    public User getUser() {
        return user;
    }

    public void setUserDetail(User userDetail) {
        this.user = userDetail;
    }
}
