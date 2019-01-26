package com.hsk.service.impl;

import com.hsk.dao.IUserDao;
import com.hsk.dto.User;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements IBaseService<User> {
    //    持久层对象
    @Autowired
    IUserDao dao;


    /**
     * 添加
     *
     * @param user
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(User user) throws SQLException {
        return dao.add(user);
    }

    /**
     * 删除
     *
     * @param id
     * @return
     * @throws SQLException
     */
    @Override
    public boolean delete(String id) throws SQLException {
        return dao.delete(id);
    }

    /**
     * 模糊查询
     *
     * @param map
     * @return
     * @throws SQLException
     */
    @Override
    public List<User> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    /**
     * 判断用户名称是否存在
     *
     * @param map
     * @return
     * @throws SQLException
     */
    public boolean isExist(Map map) throws SQLException {
        return dao.findOneByProp(map) != null ? true : false;
    }

    /**
     * 用户登录
     *
     * @param map
     * @return
     * @throws SQLException
     */
    public User login(Map map) throws SQLException {
        return dao.findOneByProp(map);
    }

    /**
     * 修改
     *
     * @param user
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(User user) throws SQLException {
        return dao.update(user);
    }

    /**
     * 根据ID精确查询
     * @param id
     * @return
     * @throws SQLException
     */
    @Override
    public User findOneById(String id) throws SQLException {
        return dao.findOneById(id);
    }
}
