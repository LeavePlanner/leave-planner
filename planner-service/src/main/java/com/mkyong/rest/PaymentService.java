package com.mkyong.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.mkyong.transaction.TransactionBo;

@Component
@Path("/payment")
public class PaymentService {

	@Autowired
	TransactionBo transactionBo;

	@GET
	@Path("/mkyong")
	public Response savePayment() {

		String result = transactionBo.save();

		return Response.status(200).entity(result).build();

	}

}