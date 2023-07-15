package com.example.hw5;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.widget.TextView;

public class SecondActivity  extends AppCompatActivity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        Intent intent = getIntent();
        String title = intent.getStringExtra("title");
        String content = intent.getStringExtra("content");


        TextView titleView = findViewById(R.id.detail_title);
        titleView.setText(title);
        TextView contentView = findViewById(R.id.detail_content);
        contentView.setText(content);
    }
}
