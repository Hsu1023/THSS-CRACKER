package com.example.hw5;


import java.io.Serializable;
import java.util.ArrayList;


public class MessageList implements Serializable {

    public ArrayList<Message> data = new ArrayList<>();

    private int count = 0;

    public MessageList(){
    }
    public void insert(String username, int avatar, String timestamp, String title, String content, int[] img) {
        data.add(0, new Message(count, username, avatar, timestamp, title, content, img));
        count++;
    }
    public int size(){
        return data.size();
    }
    public Message get(int id){
        return data.get(id);
    }


}
