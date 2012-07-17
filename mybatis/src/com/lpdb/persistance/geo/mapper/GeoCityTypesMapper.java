package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.CityTypes;

public interface GeoCityTypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CityTypes record);

    int insertSelective(CityTypes record);

    CityTypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CityTypes record);

    int updateByPrimaryKey(CityTypes record);
}