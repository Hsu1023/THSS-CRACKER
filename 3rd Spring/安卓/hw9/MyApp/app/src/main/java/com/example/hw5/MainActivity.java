package com.example.hw5;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.Manifest;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

public class MainActivity extends AppCompatActivity {
    private static final String LOG_TAG = MainActivity.class.getSimpleName();
    private MessageList messageList = new MessageList();
    private RecyclerView recyclerView;
    private MessageListAdapter adapter;




    @Override
    public void onSaveInstanceState(Bundle outState) {
        Log.d(LOG_TAG, "onsave");
        super.onSaveInstanceState(outState);
        outState.putSerializable("data", messageList);
    }

    public void init(){
        messageList.insert("pc20", R.drawable.avatar4,"11:05","【打卡美好生活】" , "校园春日即景，还看到了可爱的猫猫~", new int[]{R.drawable.pyq_41, R.drawable.pyq_42, R.drawable.pyq_43});
        messageList.insert("Pharos",R.drawable.avatar3, "11:19","【打卡美好生活】" , "和女朋友来吃火锅，看着真不错", new int[]{R.drawable.pyq_1, R.drawable.null_img, R.drawable.null_img});
        messageList.insert("Felix",R.drawable.avatar2,"11:25","【打卡美好生活】" , "喝一杯美式，唤起美好一天~", new int[]{R.drawable.pyq_2, R.drawable.null_img, R.drawable.null_img});
        messageList.insert("Hsu1023", R.drawable.avatar1, "11:49","【打卡美好生活】" , "天津之旅，看到了天津之眼和漂亮的夜景！", new int[]{R.drawable.pyq_31,R.drawable.pyq_32,R.drawable.pyq_33});
    }
    public void addMessage(View view){
        Intent intent = new Intent(this, EditorActivity.class);
//        intent.putExtra("img", mSharedImg);
//        intent.putExtra("text", mSharedText);
        startActivity(intent);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Log.d(LOG_TAG, "oncreate");
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        if (savedInstanceState != null){
            Log.d(LOG_TAG, "putoutSaved");
            messageList = (MessageList)savedInstanceState.getSerializable("data");
        }
        else {
            Log.d(LOG_TAG, "init");
            init();
        }


        recyclerView = findViewById(R.id.recyclerview);
        adapter = new MessageListAdapter(this, messageList, new OnItemClickListener() {
            @Override
            public void onItemClick(View view, int position, String username, int avatar, String timestamp, String title, String content, int[] img) {
                jump(username, avatar, timestamp, title, content, img);
            }});
        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
    }
    public void jump(String username, int avatar, String timestamp, String title, String content, int[] img){
        Intent intent = new Intent(this, SecondActivity.class);
        intent.putExtra("username", username);
        intent.putExtra("avatar", avatar);
        intent.putExtra("timestamp", timestamp);
        intent.putExtra("title", title);
        intent.putExtra("content", content);
        intent.putExtra("img", img);
        startActivity(intent);
    }
}