package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoCountries;

public interface GeoCountriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCountries record);

    int insertSelective(GeoCountries record);

    GeoCountries selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCountries record);

    int updateByPrimaryKey(GeoCountries record);
}