package com.netcracker.entity;

/* 18:34 28.04.2015 by Viktor Taranenko */

import javax.persistence.*;
import java.math.BigInteger;
import java.sql.Date;

@Entity
@Table(name = "car", schema = "public", catalog = "postgres")
public class CarEntity {
	private BigInteger id;
	private String model;
	private BigInteger seatsCount;
	private String licencePlate;
	private Date dateManufactured;

	@Id
	@Column(name = "id", nullable = false, insertable = true, updatable = true, precision = 0)
	public BigInteger getId() {
		return id;
	}

	public void setId(BigInteger id) {
		this.id = id;
	}

	@Basic
	@Column(name = "model", nullable = false, insertable = true, updatable = true, length = 2147483647)
	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	@Basic
	@Column(name = "seats_count", nullable = false, insertable = true, updatable = true, precision = 0)
	public BigInteger getSeatsCount() {
		return seatsCount;
	}

	public void setSeatsCount(BigInteger seatsCount) {
		this.seatsCount = seatsCount;
	}

	@Basic
	@Column(name = "licence_plate", nullable = false, insertable = true, updatable = true, length = 2147483647)
	public String getLicencePlate() {
		return licencePlate;
	}

	public void setLicencePlate(String licencePlate) {
		this.licencePlate = licencePlate;
	}

	@Basic
	@Column(name = "date_manufactured", nullable = false, insertable = true, updatable = true)
	public Date getDateManufactured() {
		return dateManufactured;
	}

	public void setDateManufactured(Date dateManufactured) {
		this.dateManufactured = dateManufactured;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		CarEntity carEntity = (CarEntity) o;

		if (id != null ? !id.equals(carEntity.id) : carEntity.id != null) return false;
		if (model != null ? !model.equals(carEntity.model) : carEntity.model != null) return false;
		if (seatsCount != null ? !seatsCount.equals(carEntity.seatsCount) : carEntity.seatsCount != null) return false;
		if (licencePlate != null ? !licencePlate.equals(carEntity.licencePlate) : carEntity.licencePlate != null)
			return false;
		if (dateManufactured != null ? !dateManufactured.equals(carEntity.dateManufactured) : carEntity.dateManufactured != null)
			return false;

		return true;
	}

	@Override
	public int hashCode() {
		int result = id != null ? id.hashCode() : 0;
		result = 31 * result + (model != null ? model.hashCode() : 0);
		result = 31 * result + (seatsCount != null ? seatsCount.hashCode() : 0);
		result = 31 * result + (licencePlate != null ? licencePlate.hashCode() : 0);
		result = 31 * result + (dateManufactured != null ? dateManufactured.hashCode() : 0);
		return result;
	}
}