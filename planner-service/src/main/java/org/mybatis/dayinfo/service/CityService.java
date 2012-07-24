package org.mybatis.dayinfo.service;

import java.util.List;

import org.mybatis.dayinfo.domain.GeoCity;
import org.mybatis.dayinfo.persistence.GeoCityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityService {

  @Autowired
  public GeoCityMapper geoCityMapper;

  public GeoCity getCity (int cityId){
	  return geoCityMapper.selectByPrimaryKey(cityId);
  }
  
  public List<GeoCity> getCities(){
	  return null;
  }

}
