// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.domain;

import com.chen.mm.domain.Mission;
import com.chen.mm.domain.User;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect User_Roo_DbManaged {
    
    @OneToMany(mappedBy = "userid")
    private Set<Mission> User.missions;
    
    @Column(name = "name", length = 20)
    private String User.name;
    
    @Column(name = "password", length = 20)
    private String User.password;
    
    @Column(name = "email", length = 20)
    private String User.email;
    
    @Column(name = "age")
    private Integer User.age;
    
    @Column(name = "role")
    @NotNull
    private Integer User.role;
    
    public Set<Mission> User.getMissions() {
        return missions;
    }
    
    public void User.setMissions(Set<Mission> missions) {
        this.missions = missions;
    }
    
    public String User.getName() {
        return name;
    }
    
    public void User.setName(String name) {
        this.name = name;
    }
    
    public String User.getPassword() {
        return password;
    }
    
    public void User.setPassword(String password) {
        this.password = password;
    }
    
    public String User.getEmail() {
        return email;
    }
    
    public void User.setEmail(String email) {
        this.email = email;
    }
    
    public Integer User.getAge() {
        return age;
    }
    
    public void User.setAge(Integer age) {
        this.age = age;
    }
    
    public Integer User.getRole() {
        return role;
    }
    
    public void User.setRole(Integer role) {
        this.role = role;
    }
    
}