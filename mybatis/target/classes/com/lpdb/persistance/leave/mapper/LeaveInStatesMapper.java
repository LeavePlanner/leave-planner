package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInStates;

public interface LeaveInStatesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInStates record);

    int insertSelective(LeaveInStates record);

    LeaveInStates selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInStates record);

    int updateByPrimaryKey(LeaveInStates record);
}