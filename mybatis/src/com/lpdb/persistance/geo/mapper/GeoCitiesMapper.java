package com.lpdb.persistance.geo.mapper;

import com.lpdb.persistance.geo.entity.Cities;

public interface GeoCitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Cities record);

    int insertSelective(Cities record);

    Cities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Cities record);

    int updateByPrimaryKey(Cities record);
}