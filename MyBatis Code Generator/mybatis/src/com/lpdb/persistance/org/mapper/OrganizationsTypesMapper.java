package com.lpdb.persistance.org.mapper;

import com.lpdb.persistance.org.entity.OrganizationsTypes;

public interface OrganizationsTypesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrganizationsTypes record);

    int insertSelective(OrganizationsTypes record);

    OrganizationsTypes selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrganizationsTypes record);

    int updateByPrimaryKey(OrganizationsTypes record);
}