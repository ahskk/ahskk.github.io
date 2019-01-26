package com.hsk.dao;

import com.hsk.dto.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface IUserDao extends IBaseDao<User> {
}
