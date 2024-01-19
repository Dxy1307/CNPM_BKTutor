package com.webgiasu.entity;

import org.hibernate.annotations.ColumnDefault;

import javax.persistence.*;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
//import java.util.Date;

@Entity
@Table(name = "user")
public class UserEntity extends BaseEntity{

    @Column(name = "username")
    private String userName;

    @Column(name = "password")
    private String password;

    @Column(name = "fullname")
    private String fullName;

    @Column(name = "status")
    private Integer status;

    @Column(name = "email")
    private String email;

    @Column(name = "phone")
    private String phone;

    @Column(name = "hometown")
    private String hometown;

    @Column(name = "address")
    private String address;

    @Column(name = "birthday")
    private Date birthday;

    @Column(name = "gender")
    private String gender;

    @Column(name = "advantage")
    private String advantage;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "university")
    private String university;

    @Column(name = "major")
    private String major;

    @Column(name = "subject")
    @ColumnDefault("''")
    private String subject = " ";

    @Column(name = "level")
    private String level;

    @Column(name = "teachcity")
    private String teachCity;

    @Column(name = "teachdistrict")
    private String teachDistrict;

    @Column(name = "idcardfront")
    private String idCardFront;

    @Column(name = "idcardback")
    private String idCardBack;

    @Column(name = "studentcard")
    private String studentCard;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "role_id")
    private RoleEntity role;

    @OneToMany(mappedBy="PHDK")
    private List<LopDKPHEntity> dslphdk = new ArrayList<>();

    @OneToMany(mappedBy="SVDK")
    private List<LopDKSVEntity> dslsvdk = new ArrayList<>();

    @OneToMany(mappedBy="PH")
    private List<LopPHEntity> dslph = new ArrayList<>();

    @OneToMany(mappedBy="SV")
    private List<LopSVEntity> dslsv = new ArrayList<>();

    @OneToMany(mappedBy="ReciveSV")
    private List<LopPHEntity> dslnsv = new ArrayList<>();

    @OneToMany(mappedBy="RecivePH")
    private List<LopSVEntity> dslnph = new ArrayList<>();

    @OneToMany(mappedBy="nhantb")
    private List<NoticeEntity> dstb = new ArrayList<>();

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public RoleEntity getRole() {
        return role;
    }

    public void setRole(RoleEntity role) {
        this.role = role;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAdvantage() {
        return advantage;
    }

    public void setAdvantage(String advantage) {
        this.advantage = advantage;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public List<LopDKPHEntity> getDslphdk() {
        return dslphdk;
    }

    public void setDslphdk(List<LopDKPHEntity> dslphdk) {
        this.dslphdk = dslphdk;
    }

    public List<LopDKSVEntity> getDslsvdk() {
        return dslsvdk;
    }

    public void setDslsvdk(List<LopDKSVEntity> dslsvdk) {
        this.dslsvdk = dslsvdk;
    }

    public List<LopPHEntity> getDslph() {
        return dslph;
    }

    public void setDslph(List<LopPHEntity> dslph) {
        this.dslph = dslph;
    }

    public List<LopSVEntity> getDslsv() {
        return dslsv;
    }

    public void setDslsv(List<LopSVEntity> dslsv) {
        this.dslsv = dslsv;
    }

    public List<LopPHEntity> getDslnsv() {
        return dslnsv;
    }

    public void setDslnsv(List<LopPHEntity> dslnsv) {
        this.dslnsv = dslnsv;
    }

    public List<LopSVEntity> getDslnph() {
        return dslnph;
    }

    public void setDslnph(List<LopSVEntity> dslnph) {
        this.dslnph = dslnph;
    }

    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getTeachCity() {
        return teachCity;
    }

    public void setTeachCity(String teachCity) {
        this.teachCity = teachCity;
    }

    public String getTeachDistrict() {
        return teachDistrict;
    }

    public void setTeachDistrict(String teachDistrict) {
        this.teachDistrict = teachDistrict;
    }

    public String getIdCardFront() {
        return idCardFront;
    }

    public void setIdCardFront(String idCardFront) {
        this.idCardFront = idCardFront;
    }

    public String getIdCardBack() {
        return idCardBack;
    }

    public void setIdCardBack(String idCardBack) {
        this.idCardBack = idCardBack;
    }

    public String getStudentCard() {
        return studentCard;
    }

    public void setStudentCard(String studentCard) {
        this.studentCard = studentCard;
    }

//    public String getDescribe() {
//        return describe;
//    }
//
//    public void setDescribe(String describe) {
//        this.describe = describe;
//    }

    public List<NoticeEntity> getDstb() {
        return dstb;
    }

    public void setDstb(List<NoticeEntity> dstb) {
        this.dstb = dstb;
    }
}
