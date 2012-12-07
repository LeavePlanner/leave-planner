package com.leaveinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leaveinfo.domain.geo.City;
import com.leaveinfo.persistence.geo.CityMapper;

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
