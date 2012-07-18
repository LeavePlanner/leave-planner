package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.UnionTerritories;

public interface GeoUnionTerritoriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UnionTerritories record);

    int insertSelective(UnionTerritories record);

    UnionTerritories selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UnionTerritories record);

    int updateByPrimaryKey(UnionTerritories record);
}