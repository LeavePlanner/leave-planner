package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveCalendars;

public interface LeaveCalendarsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveCalendars record);

    int insertSelective(LeaveCalendars record);

    LeaveCalendars selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveCalendars record);

    int updateByPrimaryKey(LeaveCalendars record);
}