package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoCountryCapital;

public interface GeoCountryCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCountryCapital record);

    int insertSelective(GeoCountryCapital record);

    GeoCountryCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCountryCapital record);

    int updateByPrimaryKey(GeoCountryCapital record);
}