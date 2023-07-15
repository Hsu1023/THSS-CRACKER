package org.tsinghua.todoapp;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Todo {
    private int number = 0;
    private String content = "";

    private Date createAt = new Date();
    private SimpleDateFormat format =new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

    public Todo(int number, String content) {
        this.number = number;
        this.content = content;
        this.createAt = new Date();
    }


    public int getNumber() {
        return number;
    }

    public String getContent() {
        return content;
    }

    public String getCreateAt() {return format.format(createAt);}
}
