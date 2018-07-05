/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pojo;

import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author l2pc214e
 */
@Path("/emp")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class TourWebService {
    TourService employeeService = new TourService();

    @GET
    public List<Tour> getAllEmployee() {

        return employeeService.getAllEmployee();
    }

    @POST
    public Tour addEmployee(Tour e) {

        return employeeService.addEmployee(e);
    }

    @PUT
    @Path("/up/{studentId}")
    public Tour updateStudent(@PathParam("studentId") int id, Tour e) {
        e.setId(id);
        return employeeService.updateEmployee(e);
    }

    @DELETE
    @Path("/del/{studentId}")
    public void deleteEmployee(@PathParam("studentId") int id) {
        employeeService.removeEmployee(id);
    }

    @GET
    @Path("/{studentId}")
    public Tour getEmployeeById(@PathParam("studentId") int id) {

        return employeeService.findEmployeeById(id);
    }
}
