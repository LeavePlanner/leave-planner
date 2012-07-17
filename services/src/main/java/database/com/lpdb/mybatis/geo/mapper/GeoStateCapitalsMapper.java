package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoStateCapitals;

public interface GeoStateCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoStateCapitals record);

    int insertSelective(GeoStateCapitals record);

    GeoStateCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoStateCapitals record);

    int updateByPrimaryKey(GeoStateCapitals record);
}