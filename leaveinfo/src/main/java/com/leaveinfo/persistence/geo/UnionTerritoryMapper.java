package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.UnionTerritory;

public interface UnionTerritoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UnionTerritory record);

    int insertSelective(UnionTerritory record);

    UnionTerritory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UnionTerritory record);

    int updateByPrimaryKey(UnionTerritory record);
}