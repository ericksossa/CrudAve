/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entidades.service;

import com.entidades.TontAves;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
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
 * @author sossa
 */
@Stateless
@Path("com.entidades.tontaves")
public class TontAvesFacadeREST extends AbstractFacade<TontAves> {

    @PersistenceContext(unitName = "backend-apirest-avesPU")
    private EntityManager em;

    public TontAvesFacadeREST() {
        super(TontAves.class);
    }

    @POST
    @Override
    @Consumes({MediaType.APPLICATION_JSON})
    public void create(TontAves entity) {
        super.create(entity);
    }

    @PUT
    @Path("{id}")
    @Consumes({MediaType.APPLICATION_JSON})
    public void edit(@PathParam("id") String id, TontAves entity) {
        super.edit(entity);
    }

    @DELETE
    @Path("{id}")
    public void remove(@PathParam("id") String id) {
        super.remove(super.find(id));
    }

    @GET
    @Path("{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public TontAves find(@PathParam("id") String id) {
        return super.find(id);
    }

    @GET
    @Path("aves/{id}")
    @Produces({MediaType.APPLICATION_JSON})
    public List<TontAves> findAve(@PathParam("id") String id) {
        TypedQuery<TontAves> query = em.createNamedQuery("TontAves.findByDsAve", TontAves.class);
        query.setParameter("dsnombreComun", id)
                .setParameter("dsnombreCientifico", id);
        List<TontAves> result = query.getResultList();

        return result;
    }

    @GET
    @Override
    @Produces({MediaType.APPLICATION_JSON})
    public List<TontAves> findAll() {
        return super.findAll();
    }

    @GET
    @Path("{from}/{to}")
    @Produces({MediaType.APPLICATION_JSON})
    public List<TontAves> findRange(@PathParam("from") Integer from, @PathParam("to") Integer to) {
        return super.findRange(new int[]{from, to});
    }

    @GET
    @Path("count")
    @Produces(MediaType.TEXT_PLAIN)
    public String countREST() {
        return String.valueOf(super.count());
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

}
