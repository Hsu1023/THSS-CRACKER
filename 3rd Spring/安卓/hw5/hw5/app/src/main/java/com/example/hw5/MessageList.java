package com.example.hw5;

import java.util.ArrayList;

public class MessageList {

    public ArrayList<Message> data = new ArrayList<>();

    private int count = 0;

    public MessageList(){
    }
    public void insert(String title, String content) {
        data.add( new Message(count, title, content));
        count++;
    }
    public int size(){
        return data.size();
    }
    public Message get(int id){
        return data.get(id);
    }
}
