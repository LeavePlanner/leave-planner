package com.dayinfo.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.mybatis.dayinfo.domain.City;
import org.mybatis.dayinfo.domain.Country;
import org.mybatis.dayinfo.service.CountryService;
import org.springframework.stereotype.Component;

import com.sun.jersey.spi.inject.Inject;

@Component
@Path("/country")
public class CountryRest {

	@Inject
	public CountryService countryService;

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/all")
	public List<Country> allCountries() {
		return countryService.getAllCities();
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/id/{param}")
	public Country getCountry(@PathParam("param") String countryId) {
		Country country = countryService.getCountry(Integer.parseInt(countryId));
		return country;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}")
	public Country getCountryByName(@PathParam("param") String countryName) {
		Country country = countryService.getCountryByName(countryName);
		return country;
	}
}