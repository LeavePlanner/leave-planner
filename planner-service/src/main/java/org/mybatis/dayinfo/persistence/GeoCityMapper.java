package org.mybatis.dayinfo.persistence;

import java.util.List;

import org.mybatis.dayinfo.domain.GeoCity;

public interface GeoCityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoCity record);

    int insertSelective(GeoCity record);

    GeoCity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoCity record);

    int updateByPrimaryKey(GeoCity record);
    
    
    // Cutom methods.
    
    GeoCity getCityByname(String cityName);
    
    GeoCity getCityById(String cityName);
    
    List<GeoCity> getCityList();

    
}