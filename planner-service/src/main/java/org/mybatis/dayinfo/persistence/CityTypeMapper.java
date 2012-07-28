package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.CityType;

public interface CityTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CityType record);

    int insertSelective(CityType record);

    CityType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CityType record);

    int updateByPrimaryKey(CityType record);
}