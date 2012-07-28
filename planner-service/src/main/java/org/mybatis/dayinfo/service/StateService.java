package org.mybatis.dayinfo.service;

import java.util.List;

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

	public List<State> getAllStates() {
		return stateMapper.getStateList();
	}

}
