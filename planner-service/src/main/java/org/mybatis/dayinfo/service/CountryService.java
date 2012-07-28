package org.mybatis.dayinfo.service;

import java.util.List;

import org.mybatis.dayinfo.domain.Country;
import org.mybatis.dayinfo.persistence.CountryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CountryService {

	@Autowired
	public CountryMapper countryMapper;

	public Country getCountry(int countryId) {
		return countryMapper.selectByPrimaryKey(countryId);
	}

	public Country getCountryByName(String countryName) {
		return countryMapper.selectByName(countryName);
	}

	public List<Country> getAllCities() {
		return countryMapper.getCountryList();
	}

}
