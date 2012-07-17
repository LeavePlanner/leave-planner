package com.lpdb.persistance.leave.mapper;

import com.lpdb.persistance.leave.entity.LeaveInUnionTerritories;

public interface LeaveInUnionTerritoriesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LeaveInUnionTerritories record);

    int insertSelective(LeaveInUnionTerritories record);

    LeaveInUnionTerritories selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(LeaveInUnionTerritories record);

    int updateByPrimaryKey(LeaveInUnionTerritories record);
}