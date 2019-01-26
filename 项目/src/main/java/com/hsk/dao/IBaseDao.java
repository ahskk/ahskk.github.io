package com.hsk.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 * 持久层通用接口
 *
 * @param <T> 泛型
 */
public interface IBaseDao<T> {
    /**
     * 添加
     *
     * @param t
     * @return
     */
    boolean add(T t) throws SQLException;

    /**
     * 删除
     *
     * @param id
     * @return
     */
    boolean delete(String id) throws SQLException;

    /**
     * 修改
     *
     * @param t
     * @return
     */
    boolean update(T t) throws SQLException;

    /**
     * 根据ID精确查询
     *
     * @param id
     * @return
     */
    T findOneById(String id) throws SQLException;

    /**
     * 根据条件模糊查询
     *
     * @param map
     * @return
     */
    List<T> findByProp(Map map) throws SQLException;

    /**
     * 根据参数精确查询
     *
     * @param map
     * @return
     */
    T findOneByProp(Map map) throws SQLException;


    //可以根据项目情况自行添加其它抽象方法
}
