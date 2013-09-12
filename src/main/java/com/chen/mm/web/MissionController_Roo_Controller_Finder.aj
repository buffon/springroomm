// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.chen.mm.web;

import com.chen.mm.domain.Mission;
import com.chen.mm.domain.User;
import com.chen.mm.web.MissionController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect MissionController_Roo_Controller_Finder {

    @RequestMapping(params = {"find=ByUserid", "form"}, method = RequestMethod.GET)
    public String MissionController.findMissionsByUseridForm(Model uiModel) {
        uiModel.addAttribute("users", User.findAllUsers());
        return "missions/findMissionsByUserid";
    }

    @RequestMapping(params = "find=ByUserid", method = RequestMethod.GET)
    public String MissionController.findMissionsByUserid(@RequestParam("userid") User userid, Model uiModel) {
        uiModel.addAttribute("missions", Mission.findMissionsByUserid(userid).getResultList());
        return "missions/list";
    }

    @RequestMapping(params = {"find=ByUsername", "username"}, method = RequestMethod.GET)
    public String MissionController.findMissionsByUsername(@RequestParam("username") String name, Model uiModel) {
        uiModel.addAttribute("missions", Mission.findMissionsByUserName(name).getResultList());
        return "missions/list";
    }

}
