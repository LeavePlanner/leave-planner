package test.lpdb.services.rest.geo;


import java.net.URI;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class Test {
	public static void main(String[] args) {
		ClientConfig config = new DefaultClientConfig();
		Client client = Client.create(config);
		WebResource service = client.resource(getBaseURI());
		// Get XML
		System.out.println(service.path("rest").path("geocities/187").accept(MediaType.TEXT_XML).get(String.class));
		// Get JSON for application
		System.out.println(service.path("rest").path("geocities/187").accept(MediaType.APPLICATION_JSON).get(String.class));
		
	}

	private static URI getBaseURI() {
		return UriBuilder.fromUri("http://localhost:8081/services").build();
	}

}