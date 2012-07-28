package org.mybatis.dayinfo.persistence;

import java.util.List;

import org.mybatis.dayinfo.domain.State;

public interface StateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(State record);

    int insertSelective(State record);

    State selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(State record);

    int updateByPrimaryKey(State record);
    
    // Custom methods.
    
    State selectByName(String stateName);
    
    State selectByCode(String stateCode);
    
    List<State> getStateList();
    
    List<State> getStateListByCountryId(Integer countryId);
    
    List<State> getStateListByCountryName(String countryName);
}