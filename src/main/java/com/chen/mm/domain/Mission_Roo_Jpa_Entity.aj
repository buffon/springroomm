// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.domain;

import com.chen.mm.domain.Mission;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Mission_Roo_Jpa_Entity {
    
    declare @type: Mission: @Entity;
    
    declare @type: Mission: @Table(name = "mission");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Mission.id;
    
    public Integer Mission.getId() {
        return this.id;
    }
    
    public void Mission.setId(Integer id) {
        this.id = id;
    }
    
}
