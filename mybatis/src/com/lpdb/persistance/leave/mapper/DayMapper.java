package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.Day;

public interface DayMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Day record);

    int insertSelective(Day record);

    Day selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Day record);

    int updateByPrimaryKey(Day record);
}