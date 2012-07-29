package com.dayinfo.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.mybatis.dayinfo.domain.City;
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
	public List<City> allCities() {
		List<City> cities = cityService.getAllCities();
		return cities;

	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}")
	public City getCity(@PathParam("param") String cityId) {
		City city = cityService.getCity(Integer.parseInt(cityId));
		return city;
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}")
	public City getCityByName(@PathParam("param") String cityName) {
		City city = cityService.getCityByName(cityName);
		return city;
	}

}