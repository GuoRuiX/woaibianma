package com.zbf.woaibianma.mapper;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface JiaoAnUserMapper {

    public List<User> getUserPage(Page<User> page) ;

}
