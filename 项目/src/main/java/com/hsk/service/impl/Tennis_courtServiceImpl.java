package com.hsk.service.impl;

import com.hsk.dao.ITennis_courtDao;
import com.hsk.dto.PageBean;
import com.hsk.dto.Tennis_court;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
@Service
public class Tennis_courtServiceImpl implements IBaseService<Tennis_court>{//    持久层对象
    @Autowired
    ITennis_courtDao dao;

    /**
     * 添加
     *
     * @param tennis_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Tennis_court tennis_court) throws SQLException {
        return dao.add(tennis_court);
    }

    /**
     * 修改
     *
     * @param tennis_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Tennis_court tennis_court) throws SQLException {
        return dao.update(tennis_court);
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
    public Tennis_court findOneById(String id) throws SQLException {
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
    public List<Tennis_court> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    @Override
    public int selectCount(Map map) {
        return 0;
    }
}
