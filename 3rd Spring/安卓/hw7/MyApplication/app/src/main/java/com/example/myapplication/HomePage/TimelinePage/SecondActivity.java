package com.example.myapplication.HomePage.TimelinePage;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.example.myapplication.R;

public class SecondActivity extends AppCompatActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
        Intent intent = getIntent();
        String username = intent.getStringExtra("username");
        int avatar = intent.getIntExtra("avatar", 0);
        String timestamp = intent.getStringExtra("timestamp");
        String title = intent.getStringExtra("title");
        String content = intent.getStringExtra("content");
        int[] img = intent.getIntArrayExtra("img");

        TextView usernameView = findViewById(R.id.detail_username);
        usernameView.setText(username);
        ImageView avatarView = findViewById(R.id.detail_avatar);
        avatarView.setImageResource(avatar);
        TextView timestampView = findViewById(R.id.detail_timestamp);
        timestampView.setText(timestamp);

        TextView titleView = findViewById(R.id.detail_title);
        titleView.setText(title);
        TextView contentView = findViewById(R.id.detail_content);
        contentView.setText(content);

        ImageView img1 = findViewById(R.id.detail_img1);
        img1.setImageResource(img[0]);
        ImageView img2 = findViewById(R.id.detail_img2);
        img2.setImageResource(img[1]);
        ImageView img3 = findViewById(R.id.detail_img3);
        img3.setImageResource(img[2]);

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}
