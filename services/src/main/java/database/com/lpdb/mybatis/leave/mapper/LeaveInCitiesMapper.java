package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveInCities;

public interface LeaveInCitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInCities record);

    int insertSelective(LeaveInCities record);

    LeaveInCities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInCities record);

    int updateByPrimaryKey(LeaveInCities record);
}