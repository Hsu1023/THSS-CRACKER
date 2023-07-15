package com.example.hw5;

import java.io.Serializable;

public class Message implements Serializable {
    public int id = 0;
    public String title = "";
    public String content = "";
    public String username = "";
    public String timestamp = "";

    int avatar = 0;
    int img[] = {0,0,0};
    Message(int id, String username, int avatar, String timestamp, String title, String content, int[] img){
        this.id = id;
        this.title = title;
        this.content = content;
        this.username = username;
        this.avatar = avatar;
        this.timestamp = timestamp;
        this.img = img;
    }
}
