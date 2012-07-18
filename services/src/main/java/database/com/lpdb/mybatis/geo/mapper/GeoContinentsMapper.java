package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.Continents;

public interface GeoContinentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Continents record);

    int insertSelective(Continents record);

    Continents selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Continents record);

    int updateByPrimaryKey(Continents record);
}