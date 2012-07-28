package com.dayinfo.rest;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

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
	@Path("/id/{param}")
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
}