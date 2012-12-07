package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.OrganizationType;

public interface OrganizationTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrganizationType record);

    int insertSelective(OrganizationType record);

    OrganizationType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrganizationType record);

    int updateByPrimaryKey(OrganizationType record);
}