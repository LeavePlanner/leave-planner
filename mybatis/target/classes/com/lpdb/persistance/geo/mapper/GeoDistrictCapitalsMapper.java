package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.DistrictCapitals;

public interface GeoDistrictCapitalsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DistrictCapitals record);

    int insertSelective(DistrictCapitals record);

    DistrictCapitals selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DistrictCapitals record);

    int updateByPrimaryKey(DistrictCapitals record);
}