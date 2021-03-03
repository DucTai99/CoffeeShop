package com.example.CoffeeShop.modal;

public class MemberCard {
    private int id;
    private int point;
    private TypeMemberCard typeMemberCard;
    private UserDetail userDetail;

    public MemberCard() {
    }

    public MemberCard(int id, int point, TypeMemberCard typeMemberCard, UserDetail userDetail) {
        this.id = id;
        this.point = point;
        this.typeMemberCard = typeMemberCard;
        this.userDetail = userDetail;
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

    public UserDetail getUserDetail() {
        return userDetail;
    }

    public void setUserDetail(UserDetail userDetail) {
        this.userDetail = userDetail;
    }
}
