// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.domain;

import com.chen.mm.domain.Mission;
import com.chen.mm.domain.User;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Mission_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "userid", referencedColumnName = "id", nullable = false)
    private User Mission.userid;
    
    @Column(name = "createtime")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Mission.createtime;
    
    @Column(name = "descs", length = 100)
    private String Mission.descs;
    
    @Column(name = "title", length = 20)
    private String Mission.title;
    
    public User Mission.getUserid() {
        return userid;
    }
    
    public void Mission.setUserid(User userid) {
        this.userid = userid;
    }
    
    public Date Mission.getCreatetime() {
        return createtime;
    }
    
    public void Mission.setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
    
    public String Mission.getDescs() {
        return descs;
    }
    
    public void Mission.setDescs(String descs) {
        this.descs = descs;
    }
    
    public String Mission.getTitle() {
        return title;
    }
    
    public void Mission.setTitle(String title) {
        this.title = title;
    }
    
}
