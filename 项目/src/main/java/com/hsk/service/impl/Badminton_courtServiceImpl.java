package com.hsk.service.impl;

import com.hsk.dao.IBadminton_courtDao;
import com.hsk.dto.Badminton_court;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
@Service
public class Badminton_courtServiceImpl implements IBaseService<Badminton_court>{//    持久层对象
    @Autowired
    IBadminton_courtDao dao;

    /**
     * 添加
     *
     * @param badminton_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Badminton_court badminton_court) throws SQLException {
        return dao.add(badminton_court);
    }

    /**
     * 修改
     *
     * @param badminton_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Badminton_court badminton_court) throws SQLException {
        return dao.update(badminton_court);
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
     * 根据ID精确查询
     * @param id
     * @return
     * @throws SQLException
     */
    @Override
    public Badminton_court findOneById(String id) throws SQLException {
        return dao.findOneById(id);
    }

    /**
     * 模糊查询
     *
     * @param map
     * @return
     * @throws SQLException
     */
    @Override
    public List<Badminton_court> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }
}
