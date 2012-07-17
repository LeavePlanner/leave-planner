package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoCountryCapitals;

public interface GeoCountryCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCountryCapitals record);

    int insertSelective(GeoCountryCapitals record);

    GeoCountryCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCountryCapitals record);

    int updateByPrimaryKey(GeoCountryCapitals record);
}