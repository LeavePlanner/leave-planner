package com.leaveinfo.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.stereotype.Component;

import com.leaveinfo.domain.geo.Country;
import com.leaveinfo.domain.geo.State;
import com.leaveinfo.service.CountryService;
import com.sun.jersey.spi.inject.Inject;

@Component
@Path("/country")
public class CountryRest {

	@Inject
	public CountryService countryService;

	/*@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/all")
	public List<Country> allCountries() {
		return countryService.getAllCities();
	}*/

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}")
	public Country getCountry(@PathParam("param") String countryId) {
		Country country = countryService.getCountry(Integer.parseInt(countryId));
		return country;
	}
	
	/*@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/code/{param}")
	public Country getCountryByCode(@PathParam("param") String countryCode) {
		Country country = countryService.getCountryByCode(countryCode);
		return country;
	}*/
	
	/*@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}")
	public Country getCountryByName(@PathParam("param") String countryName) {
		Country country = countryService.getCountryByName(countryName);
		return country;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}/states")
	public List<State> getStateList(@PathParam("param") String countryId) {
		List<State> stateList = countryService.getAllStatesByCountryId(Integer.parseInt(countryId));
		return stateList;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}/states")
	public List<State> getStateListByName(@PathParam("param") String countryName) {
		List<State> stateList = countryService.getAllStatesByCountryName(countryName);
		return stateList;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/code/{param}/states")
	public List<State> getStateListByCode(@PathParam("param") String countryCode) {
		List<State> stateList = countryService.getAllStatesByCountryCode(countryCode);
		return stateList;
	}*/
}