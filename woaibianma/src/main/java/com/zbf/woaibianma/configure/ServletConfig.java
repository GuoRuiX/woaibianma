package com.zbf.woaibianma.configure;

import com.zbf.woaibianma.core.yanZhengMa.AuthImage;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * 作者：LCG
 * 创建时间：2018/11/25 23:24
 * 描述：
 */
@Configuration
public class ServletConfig {

    /**
     * 图片验证码的功能
     * @return
     */
    @Bean
    public ServletRegistrationBean servletRegistrationBean() {
        // ServletName默认值为首字母小写，即myServlet1
        return new ServletRegistrationBean(new AuthImage (), "/image/main");
    }



}
