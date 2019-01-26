package com.hsk.dao;

import com.hsk.dto.Booking;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IBookingDao extends IBaseDao<Booking> {
}
