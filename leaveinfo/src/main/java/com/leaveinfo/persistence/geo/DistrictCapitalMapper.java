package com.leaveinfo.persistence.geo;

import com.leaveinfo.domain.geo.DistrictCapital;

public interface DistrictCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(DistrictCapital record);

    int insertSelective(DistrictCapital record);

    DistrictCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(DistrictCapital record);

    int updateByPrimaryKey(DistrictCapital record);
}