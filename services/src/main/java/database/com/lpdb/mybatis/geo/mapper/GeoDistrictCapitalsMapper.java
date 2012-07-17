package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoDistrictCapitals;

public interface GeoDistrictCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoDistrictCapitals record);

    int insertSelective(GeoDistrictCapitals record);

    GeoDistrictCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoDistrictCapitals record);

    int updateByPrimaryKey(GeoDistrictCapitals record);
}