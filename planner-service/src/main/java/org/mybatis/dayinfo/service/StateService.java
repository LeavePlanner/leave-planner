package org.mybatis.dayinfo.service;

import java.util.List;

import org.mybatis.dayinfo.domain.City;
import org.mybatis.dayinfo.domain.District;
import org.mybatis.dayinfo.domain.State;
import org.mybatis.dayinfo.persistence.StateMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StateService {

	@Autowired
	public StateMapper stateMapper;

	public State getState(int stateId) {
		return stateMapper.selectByPrimaryKey(stateId);
	}

	public State getStateByName(String stateName) {
		return stateMapper.selectByName(stateName);
	}

	public State getStateByCode(String stateCode) {
		return stateMapper.selectByCode(stateCode);
	}

	public List<State> getAllStates() {
		return stateMapper.getStateList();
	}

	public List<State> getAllStateByCountryId(int countryId) {
		return stateMapper.getStateListByCountryId(countryId);
	}

	public List<City> getAllCitiesByStateId(int stateId) {
		return stateMapper.getCityListByStateId(stateId);
	}

	public List<City> getAllCitiesByStateName(String stateName) {
		return stateMapper.getCityListByStateName(stateName);
	}

	public List<City> getAllCitiesByStateCode(String stateCode) {
		return stateMapper.getCityListByStateCode(stateCode);
	}

	public List<District> getAllDistrictsByStateId(int stateId) {
		return stateMapper.getDistrictListByStateId(stateId);
	}

	public List<District> getAllDistrictsByStateName(String stateName) {
		return stateMapper.getDistrictListByStateName(stateName);
	}

	public List<District> getAllDistrictsByStateCode(String stateCode) {
		return stateMapper.getDistrictListByStateCode(stateCode);
	}

}
