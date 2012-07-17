package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoUnionTerritories;

public interface GeoUnionTerritoriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoUnionTerritories record);

    int insertSelective(GeoUnionTerritories record);

    GeoUnionTerritories selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoUnionTerritories record);

    int updateByPrimaryKey(GeoUnionTerritories record);
}