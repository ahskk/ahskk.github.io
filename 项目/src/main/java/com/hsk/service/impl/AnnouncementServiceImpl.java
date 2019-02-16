package com.hsk.service.impl;

import com.hsk.dao.IAnnouncementDao;
import com.hsk.dto.Announcement;
import com.hsk.dto.PageBean;
import com.hsk.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Service
public class AnnouncementServiceImpl implements IBaseService<Announcement> {
    //    持久层对象
    @Autowired
    IAnnouncementDao dao;
    /**
     * 添加
     *
     * @param announcement
     * @return
     * @throws SQLException
     */
    @Override
    public boolean add(Announcement announcement) throws SQLException {
        return dao.add(announcement);
    }

    /**
     * 修改
     *
     * @param announcement
     * @return
     * @throws SQLException
     */
    @Override
    public boolean update(Announcement announcement) throws SQLException {
        return dao.update(announcement);
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
    public Announcement findOneById(String id) throws SQLException {
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
    public List<Announcement> findByProp(Map map) throws SQLException {
        return dao.findByProp(map);
    }

    @Override
    public int selectCount(Map map) {
        return 0;
    }
}
