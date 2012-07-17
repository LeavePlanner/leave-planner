package com.lpdb.persistance.org.mapper;

import com.lpdb.persistance.org.entity.OrganizationsInCities;

public interface OrganizationsInCitiesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(OrganizationsInCities record);

    int insertSelective(OrganizationsInCities record);

    OrganizationsInCities selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(OrganizationsInCities record);

    int updateByPrimaryKey(OrganizationsInCities record);
}