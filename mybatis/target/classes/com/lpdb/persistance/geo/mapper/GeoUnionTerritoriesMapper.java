package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.UnionTerritories;

public interface GeoUnionTerritoriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UnionTerritories record);

    int insertSelective(UnionTerritories record);

    UnionTerritories selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UnionTerritories record);

    int updateByPrimaryKey(UnionTerritories record);
}