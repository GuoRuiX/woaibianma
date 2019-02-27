package com.zbf.woaibianma.mapper;


import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface LoginMapper{

    public List<User> getUserList();

    public Page<User> findByPage(Page<User> page, Map<String,Object> filters);

    public User getUserById(long id);


}
