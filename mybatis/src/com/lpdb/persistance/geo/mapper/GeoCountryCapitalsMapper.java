package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.CountryCapitals;

public interface GeoCountryCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CountryCapitals record);

    int insertSelective(CountryCapitals record);

    CountryCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CountryCapitals record);

    int updateByPrimaryKey(CountryCapitals record);
}