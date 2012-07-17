package com.lpdb.mybatis.leave.mapper;

import com.lpdb.mybatis.leave.entity.LeaveDays;

public interface LeaveDaysMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveDays record);

    int insertSelective(LeaveDays record);

    LeaveDays selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveDays record);

    int updateByPrimaryKey(LeaveDays record);
}