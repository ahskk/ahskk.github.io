package com.hsk.service;


import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * 服务层通用接口类
 *
 * @param <T>
 */
public interface IBaseService<T> {

    /**
     * 修改
     * @param t
     * @return
     * @throws SQLException
     */
    boolean update(T t) throws SQLException;

    /**
     * 删除
     * @param id
     * @return
     * @throws SQLException
     */
    boolean delete(String id) throws SQLException;

    /**
     * 根据ID精确查询
     * @param id
     * @return
     */
    T findOneById(String id) throws SQLException;
    /**
     * 添加
     *
     * @param t
     * @return
     * @throws SQLException
     */
    boolean add(T t) throws SQLException;

    /**
     * 根据参数模糊查询
     *
     * @param map
     * @return List
     * @throws SQLException
     */
    List<T> findByProp(Map map) throws SQLException;

    //可以根据项目情况再自行添加
}
