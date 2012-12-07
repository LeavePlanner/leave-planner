package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.State;

public interface StateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(State record);

    int insertSelective(State record);

    State selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(State record);

    int updateByPrimaryKey(State record);
}