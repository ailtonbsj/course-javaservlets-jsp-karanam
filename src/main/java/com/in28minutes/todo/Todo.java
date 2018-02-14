package com.in28minutes.todo;

public class Todo {
	
	String name;
	
	public Todo(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return String.format("Todo [name=%s]", name);
	}
}
