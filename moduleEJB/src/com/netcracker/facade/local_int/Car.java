package com.netcracker.facade.local_int;

/* 0:12 04.05.2015 by Viktor Taranenko */

import com.netcracker.entity.CarEntity;

import javax.ejb.Local;
import java.util.List;

@Local
public interface Car {
	void create(CarEntity entity);

	CarEntity read(Object id);

	void update(CarEntity entity);

	void delete(CarEntity entity);

	List<CarEntity> findAll();

	List<CarEntity> findRange(int[] range);

	int count();
}
