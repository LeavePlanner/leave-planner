package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.Continents;

public interface GeoContinentsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Continents record);

    int insertSelective(Continents record);

    Continents selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Continents record);

    int updateByPrimaryKey(Continents record);
}