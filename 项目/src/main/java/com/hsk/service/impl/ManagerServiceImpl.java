package com.hsk.service.impl;

import com.hsk.dao.IManagerDao;
import com.hsk.dto.Manager;
import com.hsk.dto.PageBean;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Service
public class ManagerServiceImpl implements IBaseService<Manager> {
    @Autowired
    IManagerDao dao;

    /**
     * 添加
     *
     * @param manager
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Manager manager) throws SQLException {
        return dao.add(manager);
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
    public List<Manager> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    @Override
    public int selectCount(Map map) {
        return 0;
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
    public Manager login(Map map) throws SQLException {
        return dao.findOneByProp(map);
    }

    /**
     * 修改
     *
     * @param manager
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Manager manager) throws SQLException {
        return dao.update(manager);
    }

    /**
     * 根据ID精确查询
     * @param id
     * @return
     * @throws SQLException
     */
    @Override
    public Manager findOneById(String id) throws SQLException {
        return dao.findOneById(id);
    }
}
