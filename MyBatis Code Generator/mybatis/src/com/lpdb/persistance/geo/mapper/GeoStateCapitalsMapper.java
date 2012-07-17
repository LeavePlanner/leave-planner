package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.StateCapitals;

public interface GeoStateCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StateCapitals record);

    int insertSelective(StateCapitals record);

    StateCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StateCapitals record);

    int updateByPrimaryKey(StateCapitals record);
}