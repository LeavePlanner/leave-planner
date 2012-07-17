package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveInStates;

public interface LeaveInStatesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInStates record);

    int insertSelective(LeaveInStates record);

    LeaveInStates selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInStates record);

    int updateByPrimaryKey(LeaveInStates record);
}