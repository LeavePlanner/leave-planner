package com.lpdb.mybatis.geo.mapper;

import com.lpdb.mybatis.geo.entity.GeoCityTypes;

public interface GeoCityTypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCityTypes record);

    int insertSelective(GeoCityTypes record);

    GeoCityTypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCityTypes record);

    int updateByPrimaryKey(GeoCityTypes record);
}