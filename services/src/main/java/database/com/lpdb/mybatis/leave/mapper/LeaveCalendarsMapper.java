package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveCalendars;

public interface LeaveCalendarsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveCalendars record);

    int insertSelective(LeaveCalendars record);

    LeaveCalendars selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveCalendars record);

    int updateByPrimaryKey(LeaveCalendars record);
}