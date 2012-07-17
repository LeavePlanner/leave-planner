package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.Districts;

public interface GeoDistrictsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Districts record);

    int insertSelective(Districts record);

    Districts selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Districts record);

    int updateByPrimaryKey(Districts record);
}