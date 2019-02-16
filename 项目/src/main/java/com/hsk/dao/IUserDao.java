package com.hsk.dao;

import com.hsk.dto.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface IUserDao extends IBaseDao<User> {
    /**
     * 查询用户记录总数
     * @return
     */
    int selectCount(Map map);
//    /**
//     * 分页操作，调用findByPage limit分页方法
//     * @param map
//     * @return
//     */
//    List<User> findByPage(HashMap<String,Object> map);


}
