package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoCityType;

public interface GeoCityTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCityType record);

    int insertSelective(GeoCityType record);

    GeoCityType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCityType record);

    int updateByPrimaryKey(GeoCityType record);
}