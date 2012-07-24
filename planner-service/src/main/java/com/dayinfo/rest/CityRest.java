package com.dayinfo.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.mybatis.dayinfo.domain.GeoCity;
import org.mybatis.dayinfo.service.CityService;
import org.springframework.stereotype.Component;

import com.sun.jersey.spi.inject.Inject;

@Component
@Path("/city")
public class CityRest {
	
	@Inject
	public CityService cityService;
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/all")
	public List<GeoCity> allCities() {

		//CityService cityService = new CityService();
		List<GeoCity> cities = cityService.getAllCities();
		return cities;

	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}")
	public GeoCity getCity(@PathParam("param") String cityId) {
		GeoCity city = cityService.getCity(Integer.parseInt(cityId));
		return city;
	}
}