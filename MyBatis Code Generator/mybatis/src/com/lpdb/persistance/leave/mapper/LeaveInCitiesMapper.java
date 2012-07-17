package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInCities;

public interface LeaveInCitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInCities record);

    int insertSelective(LeaveInCities record);

    LeaveInCities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInCities record);

    int updateByPrimaryKey(LeaveInCities record);
}