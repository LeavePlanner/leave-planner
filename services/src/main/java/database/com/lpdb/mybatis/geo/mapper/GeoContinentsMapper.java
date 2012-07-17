package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoContinents;

public interface GeoContinentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoContinents record);

    int insertSelective(GeoContinents record);

    GeoContinents selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoContinents record);

    int updateByPrimaryKey(GeoContinents record);
}