package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.UnionTerritory;

public interface UnionTerritoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UnionTerritory record);

    int insertSelective(UnionTerritory record);

    UnionTerritory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UnionTerritory record);

    int updateByPrimaryKey(UnionTerritory record);
}