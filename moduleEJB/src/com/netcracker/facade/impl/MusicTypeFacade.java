package com.netcracker.facade.impl;

 /* 18:42 28.04.2015 by Viktor Taranenko */

import com.netcracker.entity.MusicTypeEntity;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class MusicTypeFacade extends AbstractFacade<MusicTypeEntity> implements com.netcracker.facade.local_int.MusicType {
    @PersistenceContext(unitName = "TaxiPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MusicTypeFacade() {
        super(MusicTypeEntity.class);
    }
    
}