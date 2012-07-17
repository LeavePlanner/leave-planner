package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.States;

public interface GeoStatesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(States record);

    int insertSelective(States record);

    States selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(States record);

    int updateByPrimaryKey(States record);
}