package com.hsk.service.impl;

import com.hsk.dao.IBasketball_courtDao;
import com.hsk.dto.Basketball_court;
import com.hsk.dto.PageBean;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
@Service
public class Basketball_courtServiceImpl implements IBaseService<Basketball_court>{//    持久层对象
    @Autowired
    IBasketball_courtDao dao;

    /**
     * 添加
     *
     * @param basketball_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Basketball_court basketball_court) throws SQLException {
        return dao.add(basketball_court);
    }

    /**
     * 修改
     *
     * @param basketball_court
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Basketball_court basketball_court) throws SQLException {
        return dao.update(basketball_court);
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
    public Basketball_court findOneById(String id) throws SQLException {
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
    public List<Basketball_court> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    @Override
    public int selectCount(Map map) {
        return 0;
    }
}
