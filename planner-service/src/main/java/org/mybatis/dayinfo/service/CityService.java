package org.mybatis.dayinfo.service;

import java.util.List;

import org.mybatis.dayinfo.domain.City;
import org.mybatis.dayinfo.persistence.CityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityService {

	@Autowired
	public CityMapper cityMapper;

	public City getCity(int cityId) {
		return cityMapper.selectByPrimaryKey(cityId);
	}

	public City getCityByName(String cityName) {
		return cityMapper.selectByName(cityName);
	}

	public List<City> getAllCities() {
		return cityMapper.getCityList();
	}

}
