package com.hsk.dao;

import com.hsk.dto.Manager;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IManagerDao extends IBaseDao<Manager>  {
}
