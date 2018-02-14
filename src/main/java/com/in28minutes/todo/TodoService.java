package com.in28minutes.todo;

import java.util.ArrayList;
import java.util.List;

public class TodoService {
	private static List<Todo> todos = new ArrayList<Todo>();
	static {
		todos.add(new Todo("Learn Java Web development"));
		todos.add(new Todo("Learn Spring MVC"));
		todos.add(new Todo("Learn Spring Rest Services"));
	}
	
	public List<Todo> retrieveTodos(){
		return todos;
	}
}
