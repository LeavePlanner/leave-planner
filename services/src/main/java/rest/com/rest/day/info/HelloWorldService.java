package com.rest.day.info;
 
import java.io.IOException;
import java.io.Reader;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.lpdb.mybatis.geo.entity.Cities;
import com.lpdb.mybatis.geo.mapper.GeoCitiesMapper;

@Path("/geo")
public class HelloWorldService {
 
	@GET
	@Path("/{param}")
	public Response getMsg(@PathParam("param") String msg) {
 
		String output = "Jersey say : " + msg;
 
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
			Cities cities = mapper.selectByPrimaryKey(Integer.parseInt(msg));
			System.out.println(cities.getName() + ":"
						+ cities.getDescription());
			output = cities.getName();
		} finally {
			session.close();
		}
		
		
		return Response.status(200).entity(output).build();
 
	}
 
}