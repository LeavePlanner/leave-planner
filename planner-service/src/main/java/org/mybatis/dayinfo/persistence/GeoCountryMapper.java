package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoCountry;

public interface GeoCountryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCountry record);

    int insertSelective(GeoCountry record);

    GeoCountry selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCountry record);

    int updateByPrimaryKey(GeoCountry record);
}