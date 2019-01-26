package com.hsk.dao;

import com.hsk.dto.Announcement;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IAnnouncementDao extends IBaseDao<Announcement> {
}
