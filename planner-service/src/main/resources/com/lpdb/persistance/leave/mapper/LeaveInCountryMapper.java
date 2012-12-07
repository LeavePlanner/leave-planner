package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInCountry;

public interface LeaveInCountryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInCountry record);

    int insertSelective(LeaveInCountry record);

    LeaveInCountry selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInCountry record);

    int updateByPrimaryKey(LeaveInCountry record);
}