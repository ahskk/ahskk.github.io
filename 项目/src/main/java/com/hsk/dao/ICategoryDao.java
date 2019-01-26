package com.hsk.dao;

import com.hsk.dto.Category;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ICategoryDao extends IBaseDao<Category> {
}
