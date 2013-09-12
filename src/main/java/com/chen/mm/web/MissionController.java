package com.chen.mm.web;
import com.chen.mm.domain.Mission;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RequestMapping("/missions")
@Controller
@RooWebScaffold(path = "missions", formBackingObject = Mission.class)
@RooWebFinder
public class MissionController {
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String create(@Valid Mission mission, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mission);
            return "missions/create";
        }
        uiModel.asMap().clear();
        mission.persist();
        return "redirect:/missions/" + encodeUrlPathSegment(mission.getId().toString(), httpServletRequest);
    }
}
