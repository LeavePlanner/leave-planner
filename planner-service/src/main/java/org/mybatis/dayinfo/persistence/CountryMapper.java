package org.mybatis.dayinfo.persistence;

import java.util.List;

import org.mybatis.dayinfo.domain.Country;
import org.mybatis.dayinfo.domain.State;

public interface CountryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Country record);

    int insertSelective(Country record);

    Country selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Country record);

    int updateByPrimaryKey(Country record);
    
    // Custom methods.
    
    Country selectByName(String countryName);
    
    Country selectByCode(String countryCode);
    
    List<Country> getCountryList();
    
    List<State> getStateListByCountryId(Integer countryId);
    
    List<State> getStateListByCountryName(String countryName);
    
    List<State> getStateListByCountryCode(String countryCode);
}