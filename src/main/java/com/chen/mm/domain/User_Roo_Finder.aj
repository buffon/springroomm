// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.domain;

import com.chen.mm.domain.User;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect User_Roo_Finder {
    
    public static TypedQuery<User> User.findUsersByNameAndPasswordEquals(String name, String password) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        if (password == null || password.length() == 0) throw new IllegalArgumentException("The password argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.name = :name AND o.password = :password", User.class);
        q.setParameter("name", name);
        q.setParameter("password", password);
        return q;
    }

    public static TypedQuery<User> User.findUsersByName(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.name = :name", User.class);
        q.setParameter("name", name);
        return q;
    }
    
}
