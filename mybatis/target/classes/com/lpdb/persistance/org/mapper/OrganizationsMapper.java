package com.lpdb.persistance.org.mapper;

import com.lpdb.persistance.org.entity.Organizations;

public interface OrganizationsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Organizations record);

    int insertSelective(Organizations record);

    Organizations selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Organizations record);

    int updateByPrimaryKey(Organizations record);
}