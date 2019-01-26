package com.hsk.service.impl;

import com.hsk.dao.IBookingDao;
import com.hsk.dto.Booking;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
@Service
public class BookingServiceImpl implements IBaseService<Booking> {
    //    持久层对象
    @Autowired
    IBookingDao dao;
    /**
     * 添加
     *
     * @param booking
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Booking booking) throws SQLException {
        return dao.add(booking);
    }

    /**
     * 修改
     *
     * @param booking
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Booking booking) throws SQLException {
        return dao.update(booking);
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
    public Booking findOneById(String id) throws SQLException {
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
    public List<Booking> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }
}
