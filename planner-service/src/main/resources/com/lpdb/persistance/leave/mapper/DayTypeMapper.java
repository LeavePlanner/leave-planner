package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.DayType;

public interface DayTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DayType record);

    int insertSelective(DayType record);

    DayType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DayType record);

    int updateByPrimaryKey(DayType record);
}