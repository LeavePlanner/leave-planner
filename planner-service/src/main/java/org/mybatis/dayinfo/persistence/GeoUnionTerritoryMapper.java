package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoUnionTerritory;

public interface GeoUnionTerritoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoUnionTerritory record);

    int insertSelective(GeoUnionTerritory record);

    GeoUnionTerritory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoUnionTerritory record);

    int updateByPrimaryKey(GeoUnionTerritory record);
}