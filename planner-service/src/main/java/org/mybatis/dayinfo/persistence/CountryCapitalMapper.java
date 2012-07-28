package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.CountryCapital;

public interface CountryCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CountryCapital record);

    int insertSelective(CountryCapital record);

    CountryCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CountryCapital record);

    int updateByPrimaryKey(CountryCapital record);
}