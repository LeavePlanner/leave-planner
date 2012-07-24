package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoContinent;

public interface GeoContinentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoContinent record);

    int insertSelective(GeoContinent record);

    GeoContinent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoContinent record);

    int updateByPrimaryKey(GeoContinent record);
}