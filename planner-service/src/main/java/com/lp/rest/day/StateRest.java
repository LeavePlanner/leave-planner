package com.lp.rest.day;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.mybatis.dayinfo.domain.City;
import org.mybatis.dayinfo.domain.District;
import org.mybatis.dayinfo.domain.State;
import org.mybatis.dayinfo.service.StateService;
import org.springframework.stereotype.Component;

import com.sun.jersey.spi.inject.Inject;

@Component
@Path("/state")
public class StateRest {

	@Inject
	public StateService stateService;

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/all")
	public List<State> allStates() {
		return stateService.getAllStates();
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}")
	public State getCountry(@PathParam("param") String stateId) {
		State country = stateService.getState(Integer.parseInt(stateId));
		return country;
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}")
	public State getCountryByName(@PathParam("param") String stateName) {
		State country = stateService.getStateByName(stateName);
		return country;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/code/{param}")
	public State getCountryByCode(@PathParam("param") String stateCode) {
		State country = stateService.getStateByCode(stateCode);
		return country;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}/cities")
	public List<City> getCitiesByStateId(@PathParam("param") String stateId) {
		List<City> allCities = stateService.getAllCitiesByStateId(Integer.parseInt(stateId));
		return allCities;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}/cities")
	public List<City> getCitiesByStateName(@PathParam("param") String stateName) {
		List<City> allCities = stateService.getAllCitiesByStateName(stateName);
		return allCities;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/code/{param}/cities")
	public List<City> getCitiesByStateCode(@PathParam("param") String stateCode) {
		List<City> allCities = stateService.getAllCitiesByStateCode(stateCode);
		return allCities;
	}

	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/{param}/districts")
	public List<District> getDistrictsByStateId(@PathParam("param") String stateId) {
		List<District> allDistricts = stateService.getAllDistrictsByStateId(Integer.parseInt(stateId));
		return allDistricts;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/name/{param}/districts")
	public List<District> getDistrictsByStateName(@PathParam("param") String stateName) {
		List<District> allDistricts = stateService.getAllDistrictsByStateName(stateName);
		return allDistricts;
	}
	
	@GET
	@Produces({ MediaType.APPLICATION_JSON })
	@Path("/code/{param}/districts")
	public List<District> getDistrictsByStateCode(@PathParam("param") String stateCode) {
		List<District> allDistricts = stateService.getAllDistrictsByStateCode(stateCode);
		return allDistricts;
	}
	
}