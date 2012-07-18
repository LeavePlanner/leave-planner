package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.Countries;

public interface GeoCountriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Countries record);

    int insertSelective(Countries record);

    Countries selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Countries record);

    int updateByPrimaryKey(Countries record);
}