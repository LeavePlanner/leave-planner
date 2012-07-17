package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInOrganizations;

public interface LeaveInOrganizationsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInOrganizations record);

    int insertSelective(LeaveInOrganizations record);

    LeaveInOrganizations selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInOrganizations record);

    int updateByPrimaryKey(LeaveInOrganizations record);
}