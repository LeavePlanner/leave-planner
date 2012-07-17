package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoCities;

public interface GeoCitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCities record);

    int insertSelective(GeoCities record);

    GeoCities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCities record);

    int updateByPrimaryKey(GeoCities record);
}