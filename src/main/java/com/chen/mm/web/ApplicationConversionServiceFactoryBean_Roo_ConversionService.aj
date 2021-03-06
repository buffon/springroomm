// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.web;

import com.chen.mm.domain.Admin;
import com.chen.mm.domain.Mission;
import com.chen.mm.domain.User;
import com.chen.mm.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Admin, String> ApplicationConversionServiceFactoryBean.getAdminToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.chen.mm.domain.Admin, java.lang.String>() {
            public String convert(Admin admin) {
                return new StringBuilder().append(admin.getName()).append(' ').append(admin.getPassword()).toString();
            }
        };
    }
    
    public Converter<Integer, Admin> ApplicationConversionServiceFactoryBean.getIdToAdminConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.chen.mm.domain.Admin>() {
            public com.chen.mm.domain.Admin convert(java.lang.Integer id) {
                return Admin.findAdmin(id);
            }
        };
    }
    
    public Converter<String, Admin> ApplicationConversionServiceFactoryBean.getStringToAdminConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.chen.mm.domain.Admin>() {
            public com.chen.mm.domain.Admin convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Admin.class);
            }
        };
    }
    
    public Converter<Mission, String> ApplicationConversionServiceFactoryBean.getMissionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.chen.mm.domain.Mission, java.lang.String>() {
            public String convert(Mission mission) {
                return new StringBuilder().append(mission.getCreatetime()).append(' ').append(mission.getDescs()).append(' ').append(mission.getTitle()).toString();
            }
        };
    }
    
    public Converter<Integer, Mission> ApplicationConversionServiceFactoryBean.getIdToMissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.chen.mm.domain.Mission>() {
            public com.chen.mm.domain.Mission convert(java.lang.Integer id) {
                return Mission.findMission(id);
            }
        };
    }
    
    public Converter<String, Mission> ApplicationConversionServiceFactoryBean.getStringToMissionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.chen.mm.domain.Mission>() {
            public com.chen.mm.domain.Mission convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Mission.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.chen.mm.domain.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getName()).append(' ').append(user.getPassword()).append(' ').append(user.getEmail()).append(' ').append(user.getAge()).toString();
            }
        };
    }
    
    public Converter<Integer, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.chen.mm.domain.User>() {
            public com.chen.mm.domain.User convert(java.lang.Integer id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.chen.mm.domain.User>() {
            public com.chen.mm.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), User.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAdminToStringConverter());
        registry.addConverter(getIdToAdminConverter());
        registry.addConverter(getStringToAdminConverter());
        registry.addConverter(getMissionToStringConverter());
        registry.addConverter(getIdToMissionConverter());
        registry.addConverter(getStringToMissionConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
