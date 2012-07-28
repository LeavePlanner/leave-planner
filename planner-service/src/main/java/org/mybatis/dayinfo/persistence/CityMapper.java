package org.mybatis.dayinfo.persistence;

import java.util.List;

import org.mybatis.dayinfo.domain.City;

public interface CityMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
    
    // Custom methods.
    
    City selectByName(String cityName);
    
    List<City> getCityList();
}