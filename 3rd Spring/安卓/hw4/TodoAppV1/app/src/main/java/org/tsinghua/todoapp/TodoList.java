package org.tsinghua.todoapp;

import java.util.ArrayList;

public class TodoList {
    private ArrayList<Todo> data = new ArrayList<>();
    private int count = 0;

    public TodoList(ArrayList<String> contents) {
        for (int i = 0; i < contents.size(); i++) {
            data.add(new Todo(i, contents.get(i)));
            count++;
        }
    }

    public TodoList() {
    }

    public void insert(String content) {
        data.add(0, new Todo(count, content));
        count++;
    }

    public void delete(int number) {
        data.remove(number);
        count--;
    }

    public Todo get(int index) {
        return data.get(index);
    }

    public int size() {
        return data.size();
    }
}
