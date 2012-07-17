package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveInCountries;

public interface LeaveInCountriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInCountries record);

    int insertSelective(LeaveInCountries record);

    LeaveInCountries selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInCountries record);

    int updateByPrimaryKey(LeaveInCountries record);
}