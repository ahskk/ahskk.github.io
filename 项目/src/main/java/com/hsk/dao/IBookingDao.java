package com.hsk.dao;

import com.hsk.dto.Booking;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Mapper
public interface IBookingDao extends IBaseDao<Booking> {
    /**
     * 查询订单记录总数
     * @return
     */
    int selectCount(Map map);
//    /**
//     * 分页操作，调用findByPage limit分页方法
//     * @param map
//     * @return
//     */
//    List<Booking> findByPage(HashMap map);
}
