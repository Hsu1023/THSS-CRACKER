package com.example.hw5;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    private static final String LOG_TAG = MainActivity.class.getSimpleName();
    private final MessageList messageList = new MessageList();
    private RecyclerView recyclerView;
    private MessageListAdapter adapter;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        for (int i = 1; i <= 2; i++){
            messageList.insert("title " + i, "content" + i);
        }

        recyclerView = findViewById(R.id.recyclerview);
        adapter = new MessageListAdapter(this, messageList, new OnItemClickListener() {
            @Override
            public void onItemClick(View view, int position, String title, String content) {
                jump(title, content);
            }});
        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
    }
    public void jump(String title, String content){
        Log.d(LOG_TAG, "Button clicked!"+title);
        Intent intent = new Intent(this, SecondActivity.class);
        intent.putExtra("title", title);
        intent.putExtra("content", content);
        startActivity(intent);
    }
}