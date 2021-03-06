package com.zbf.woaibianma.mapper;

import com.zbf.woaibianma.entity.Menu;
import com.zbf.woaibianma.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface MenuMapper {

    /**
     * 查询用户菜单
     * @return
     */
    public List<Menu> getMenus(Map<String, Object> filter);
    /**
     * 新增菜单
     * @param map
     * @return
     */
    public int saveMenu(Map<String, Object> map);

    public List<Menu> getMenuByItems(Map<String, Object> filter);

    public int deleteMuensById(List<Menu> list);
    /**
     * 删除角色菜单绑定关系
     * @param filter
     * @return
     */
    public int deleteRoleMenuRelation(Map<String, Object> filter);

    public List<Menu> findMenuByCode(Map<String, Object> filter);


    /**
     * 获取所有菜单信息
     * @param map
     * @return
     */
    public List<String> listMenuMap(Map<String, Object> map);
    /**
     * 获取用户的权限信息
     * @param map
     * @return
     */
    public List<String> listMenuUser(Map<String, Object> map);


    public Menu get(Long id);

    public int update(Menu entity);


}
