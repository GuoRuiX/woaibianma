package com.zbf.woaibianma.web;

import org.assertj.core.util.Maps;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.thymeleaf.spring5.view.ThymeleafViewResolver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * 作者：LCG
 * 创建时间：2018/11/26 9:47
 * 描述：
 */
@Controller
public class ShouyeController {
    @Resource
    private Environment env;

    @RequestMapping("/")
    public ModelAndView index(Model model, HttpServletResponse response, ModelAndView modelAndView) {
        modelAndView.setViewName ( "login2" );
        return modelAndView;
    }


    @Resource
    private void configureThymeleafStaticVars(ThymeleafViewResolver viewResolver) {
        if(viewResolver != null) {
            viewResolver.addStaticVariable ( "stylePath" ,env.getProperty("stylePath"));
            viewResolver.addStaticVariable ( "contextpath" ,env.getProperty("contextpath"));
        }
    }

}
