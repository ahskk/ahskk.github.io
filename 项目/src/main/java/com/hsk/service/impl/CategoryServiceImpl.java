package com.hsk.service.impl;

import com.hsk.dao.ICategoryDao;
import com.hsk.dto.Category;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Service
public class CategoryServiceImpl implements IBaseService<Category>{
    //    持久层对象
    @Autowired
    ICategoryDao dao;

    /**
     * @param category
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Category category) throws SQLException {
        return dao.add(category);
    }

    /**
     * 模糊查询
     *
     * @param map
     * @return
     * @throws SQLException
     */
    @Override
    public List<Category> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    /**
     * 修改
     *
     * @param category
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Category category) throws SQLException {
        return dao.update(category);
    }

    @Override
    public boolean delete(String id) throws SQLException {
        return dao.delete(id);
    }

    @Override
    public Category findOneById(String id) throws SQLException {
        return dao.findOneById(id);
    }
}
