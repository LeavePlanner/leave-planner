package com.lpdb.services.rest.geo;
 
import java.io.IOException;
import java.io.Reader;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lpdb.mybatis.geo.entity.Cities;
import com.lpdb.mybatis.geo.mapper.GeoCitiesMapper;

@Path("/geocities")
public class CitiesService {
 
	@GET
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	@Path("/{param}")
	public Cities getCity(@PathParam("param") String msg) {
 
		Cities cities = null;
 
		String resource = "configuration.xml";
		Reader reader = null;
		SqlSessionFactory sqlMapper = null;
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SqlSession session = sqlMapper.openSession();
		try {
			GeoCitiesMapper mapper = session.getMapper(GeoCitiesMapper.class);
			cities = mapper.selectByPrimaryKey(Integer.parseInt(msg));
			System.out.println(cities.getName() + ":"
						+ cities.getDescription());
			
		} finally {
			session.close();
		}
		
		
		return cities;
 
	}
	
	
	
	@GET
	@Produces({ MediaType.TEXT_XML })
	@Path("/{param}")
	public Cities getCity2(@PathParam("param") String msg) {
 
		Cities cities = null;
 
		String resource = "configuration.xml";
		Reader reader = null;
		SqlSessionFactory sqlMapper = null;
		try {
			reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		SqlSession session = sqlMapper.openSession();
		try {
			GeoCitiesMapper mapper = session.getMapper(GeoCitiesMapper.class);
			cities = mapper.selectByPrimaryKey(Integer.parseInt(msg));
			System.out.println(cities.getName() + ":"
						+ cities.getDescription());			
		} finally {
			session.close();
		}
		
		
		//return Response.status(200).entity(output).build();
		return cities;
 
	}
 
}