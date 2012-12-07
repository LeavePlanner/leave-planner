package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.CityType;

public interface CityTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CityType record);

    int insertSelective(CityType record);

    CityType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CityType record);

    int updateByPrimaryKey(CityType record);
}