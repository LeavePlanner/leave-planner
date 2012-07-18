package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.States;

public interface GeoStatesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(States record);

    int insertSelective(States record);

    States selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(States record);

    int updateByPrimaryKey(States record);
}