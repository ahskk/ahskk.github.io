package com.hsk.service.impl;

import com.hsk.dao.IBookingDao;
import com.hsk.dto.Booking;
import com.hsk.dto.PageBean;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.HashMap;
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

    @Override
    public int selectCount(Map map) {
        return dao.selectCount(map);
    }

//    @Override
//    public PageBean<Booking> findByPage(int currentPage) {
//        HashMap map = new HashMap();
//        PageBean<Booking> pageBean = new PageBean<Booking>();
//
//        //封装当前页数
//        pageBean.setCurrPage(currentPage);
//
//        //每页显示的数据
//        int pageSize=10;
//        pageBean.setPageSize(pageSize);
//
//        //封装总记录数
//        int totalCount = dao.selectCount(map);
//        pageBean.setTotalCount(totalCount);
//
//        //封装总页数
//        double tc = totalCount;
//        Double num =Math.ceil(tc/pageSize);//向上取整
//        pageBean.setTotalPage(num.intValue());
//
//        map.put("start",(currentPage-1)*pageSize);
//        map.put("size", pageBean.getPageSize());
//        //封装每页显示的数据
//        List<Booking> lists = dao.findByPage(map);
//        pageBean.setLists(lists);
//
//        return pageBean;
//    }
}