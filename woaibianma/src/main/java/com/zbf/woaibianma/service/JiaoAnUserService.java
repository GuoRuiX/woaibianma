package com.zbf.woaibianma.service;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import com.zbf.woaibianma.mapper.JiaoAnUserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * 作者：LCG
 * 创建时间：2018/11/30 16:27
 * 描述：
 */
@Component
public class JiaoAnUserService {
    @Autowired
    private JiaoAnUserMapper jiaoAnUserMapper;

    public void getUserPage(Page<User> page){
        List<User> list= jiaoAnUserMapper.getUserPage ( page );
        page.setResultList ( list );
    }
}
