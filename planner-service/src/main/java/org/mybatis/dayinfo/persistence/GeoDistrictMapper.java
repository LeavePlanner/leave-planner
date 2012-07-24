package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoDistrict;

public interface GeoDistrictMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoDistrict record);

    int insertSelective(GeoDistrict record);

    GeoDistrict selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoDistrict record);

    int updateByPrimaryKey(GeoDistrict record);
}