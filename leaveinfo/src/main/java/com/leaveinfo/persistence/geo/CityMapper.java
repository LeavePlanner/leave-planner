package com.leaveinfo.persistence.geo;

import java.util.List;

import com.leaveinfo.domain.geo.City;

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