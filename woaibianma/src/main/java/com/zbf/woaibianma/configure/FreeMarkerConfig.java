package com.zbf.woaibianma.configure;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.annotation.PostConstruct;

@Configuration
public class FreeMarkerConfig {


    @Autowired
    private freemarker.template.Configuration configuration;


    private InternalResourceViewResolver resourceViewResolver;

    @Value("${stylePath}")
    private String stylePath;


    // Spring 初始化的时候加载配置
    @PostConstruct
    public void setConfigure() throws Exception {

        // 加载html的资源路径
        configuration.setSharedVariable("stylePath", stylePath);
        configuration.setSharedVariable("contextpath","");

    }

}