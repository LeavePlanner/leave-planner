package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.StateCapital;

public interface StateCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StateCapital record);

    int insertSelective(StateCapital record);

    StateCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StateCapital record);

    int updateByPrimaryKey(StateCapital record);
}