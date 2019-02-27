package com.zbf.woaibianma.mapper;

import com.zbf.woaibianma.core.entity.Page;
import com.zbf.woaibianma.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapper{
      	
   public User getByUserName(String loginName);

   public int saveAddUser(Map<String, Object> map);

   /**
    * return 0 if fail
    */
   int insert(User entity);

   /*int singleBatchInsert(List<T> entitys);*/

   /*int delete(T entity);*/

   int delete(Long id);

   /*int batchDelete(List<Long> ids);*/

   int update(User entity);

   /*int batchSaveOrUpdate(List<T> entities);*/

   User get(Long id);

   List<User> findPage(Page<User> page);

}
