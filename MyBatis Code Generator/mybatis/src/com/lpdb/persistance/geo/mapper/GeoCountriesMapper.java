package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.Countries;

public interface GeoCountriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Countries record);

    int insertSelective(Countries record);

    Countries selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Countries record);

    int updateByPrimaryKey(Countries record);
}