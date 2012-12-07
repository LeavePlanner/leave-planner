package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInOrganization;

public interface LeaveInOrganizationMapper {

	int insert(LeaveInOrganization record);

	int insertSelective(LeaveInOrganization record);

	LeaveInOrganization selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(LeaveInOrganization record);

	int updateByPrimaryKey(LeaveInOrganization record);

	int deleteByPrimaryKey(Integer id);
}