package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInCity;

public interface LeaveInCityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInCity record);

    int insertSelective(LeaveInCity record);

    LeaveInCity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInCity record);

    int updateByPrimaryKey(LeaveInCity record);
}