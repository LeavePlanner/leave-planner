package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.CountryCapitals;

public interface GeoCountryCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CountryCapitals record);

    int insertSelective(CountryCapitals record);

    CountryCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CountryCapitals record);

    int updateByPrimaryKey(CountryCapitals record);
}