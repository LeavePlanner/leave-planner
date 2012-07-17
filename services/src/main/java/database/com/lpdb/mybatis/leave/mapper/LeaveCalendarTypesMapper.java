package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveCalendarTypes;

public interface LeaveCalendarTypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveCalendarTypes record);

    int insertSelective(LeaveCalendarTypes record);

    LeaveCalendarTypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveCalendarTypes record);

    int updateByPrimaryKey(LeaveCalendarTypes record);
}