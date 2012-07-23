package com.dayinfo.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;

import org.mybatis.dayinfo.domain.Cities;
import org.mybatis.dayinfo.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sun.jersey.spi.inject.Inject;

@Component
@Path("/cities")
public class CityRest {
	
	@Inject
	public CityService cityService;
	
	@GET
	@Path("/allcities")
	public Response allCities() {

		//CityService cityService = new CityService();
		Cities city = cityService.getAccount("");
		return Response.status(200).entity(city.getName()).build();

	}

}