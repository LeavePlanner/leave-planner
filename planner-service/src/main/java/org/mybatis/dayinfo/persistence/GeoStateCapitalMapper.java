package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoStateCapital;

public interface GeoStateCapitalMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoStateCapital record);

    int insertSelective(GeoStateCapital record);

    GeoStateCapital selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoStateCapital record);

    int updateByPrimaryKey(GeoStateCapital record);
}