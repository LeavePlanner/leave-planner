package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoDistricts;

public interface GeoDistrictsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoDistricts record);

    int insertSelective(GeoDistricts record);

    GeoDistricts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoDistricts record);

    int updateByPrimaryKey(GeoDistricts record);
}