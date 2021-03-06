package com.netcracker.facade.local_int;

/* 0:25 04.05.2015 by Viktor Taranenko */

import com.netcracker.entity.UserAccessLevelEntity;

import javax.ejb.Local;
import java.util.List;

@Local
public interface UserAccessLevel {
	void create(UserAccessLevelEntity entity);

	UserAccessLevelEntity read(Object id);

	void update(UserAccessLevelEntity entity);

	void delete(UserAccessLevelEntity entity);

	List<UserAccessLevelEntity> findAll();

	List<UserAccessLevelEntity> findRange(int[] range);

	int count();
}
