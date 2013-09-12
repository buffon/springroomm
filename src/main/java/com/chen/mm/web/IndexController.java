package com.chen.mm.web;

import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 * User: user
 * Date: 13-9-12
 * Time: 上午11:36
 * To change this template use File | Settings | File Templates.
 */
@RequestMapping("/")
@Controller
@RooWebFinder
public class IndexController {

    @RequestMapping(produces = "text/html")
    public String create(Model uiModel, HttpServletRequest httpServletRequest) {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        httpServletRequest.getSession().setAttribute("username", userDetails.getUsername());
        return "index";
    }
}
