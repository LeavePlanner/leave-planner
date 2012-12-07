package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.CountryCapital;

public interface CountryCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CountryCapital record);

    int insertSelective(CountryCapital record);

    CountryCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CountryCapital record);

    int updateByPrimaryKey(CountryCapital record);
}