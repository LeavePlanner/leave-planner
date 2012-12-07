package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.OrganizationInCity;

public interface OrganizationInCityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrganizationInCity record);

    int insertSelective(OrganizationInCity record);

    OrganizationInCity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrganizationInCity record);

    int updateByPrimaryKey(OrganizationInCity record);
}