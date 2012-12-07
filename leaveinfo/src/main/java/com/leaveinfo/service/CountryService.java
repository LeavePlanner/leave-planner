package com.leaveinfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leaveinfo.domain.geo.Country;
import com.leaveinfo.domain.geo.State;
import com.leaveinfo.persistence.geo.CountryMapper;

@Service
public class CountryService {

	@Autowired
	public CountryMapper countryMapper;

	public Country getCountry(int countryId) {
		return countryMapper.selectByPrimaryKey(countryId);
	}

	/*public Country getCountryByName(String countryName) {
		return countryMapper.selectByName(countryName);
	}
	
	public Country getCountryByCode(String countryCode) {
		return countryMapper.selectByCode(countryCode);
	}

	public List<Country> getAllCities() {
		return countryMapper.getCountryList();
	}
	
	public List<State> getAllStatesByCountryId(int countryId) {
		return countryMapper.getStateListByCountryId(countryId);
	}
	
	public List<State> getAllStatesByCountryName(String countryName) {
		return countryMapper.getStateListByCountryName(countryName);
	}
	
	public List<State> getAllStatesByCountryCode(String countryCode) {
		return countryMapper.getStateListByCountryCode(countryCode);
	}*/

}
