package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.Continent;

public interface ContinentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Continent record);

    int insertSelective(Continent record);

    Continent selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Continent record);

    int updateByPrimaryKey(Continent record);
}