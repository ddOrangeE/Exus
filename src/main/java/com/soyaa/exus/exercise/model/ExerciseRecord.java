package com.soyaa.exus.exercise.model;

import java.util.Date;

public class ExerciseRecord {

	private int id;
	private int userId;
	private int missionId;
	private Date timestamp;
	private String exercise;
	private Date exerciseTime;
	private int didOrNot;
	private Date createdAt;
	private Date updatedAt;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getMissionId() {
		return missionId;
	}
	public void setMissionId(int missionId) {
		this.missionId = missionId;
	}
	public Date getTimestamp() {
		return timestamp;
	}
	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	public String getExercise() {
		return exercise;
	}
	public void setExercise(String exercise) {
		this.exercise = exercise;
	}
	public Date getExerciseTime() {
		return exerciseTime;
	}
	public void setExerciseTime(Date exerciseTime) {
		this.exerciseTime = exerciseTime;
	}
	public int getDidOrNot() {
		return didOrNot;
	}
	public void setDidOrNot(int didOrNot) {
		this.didOrNot = didOrNot;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
}
