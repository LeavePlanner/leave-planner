package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveTypes;

public interface LeaveTypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveTypes record);

    int insertSelective(LeaveTypes record);

    LeaveTypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveTypes record);

    int updateByPrimaryKey(LeaveTypes record);
}