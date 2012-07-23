package org.mybatis.dayinfo.service;

import org.mybatis.dayinfo.domain.Cities;
import org.mybatis.dayinfo.persistence.GeoCitiesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CityService {

  @Autowired
  public GeoCitiesMapper geoCitiesMapper;

  public Cities getAccount(String username) {
    return geoCitiesMapper.selectByPrimaryKey(187);
  }

	public GeoCitiesMapper getGeoCitiesMapper() {
		return geoCitiesMapper;
	}
	
	public void setGeoCitiesMapper(GeoCitiesMapper geoCitiesMapper) {
		this.geoCitiesMapper = geoCitiesMapper;
	}
	  
  
}
