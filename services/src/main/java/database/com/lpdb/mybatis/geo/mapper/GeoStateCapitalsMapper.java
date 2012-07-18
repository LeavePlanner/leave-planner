package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.StateCapitals;

public interface GeoStateCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StateCapitals record);

    int insertSelective(StateCapitals record);

    StateCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StateCapitals record);

    int updateByPrimaryKey(StateCapitals record);
}