package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoStates;

public interface GeoStatesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoStates record);

    int insertSelective(GeoStates record);

    GeoStates selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoStates record);

    int updateByPrimaryKey(GeoStates record);
}