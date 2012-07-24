package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoDistrictCapital;

public interface GeoDistrictCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoDistrictCapital record);

    int insertSelective(GeoDistrictCapital record);

    GeoDistrictCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoDistrictCapital record);

    int updateByPrimaryKey(GeoDistrictCapital record);
}