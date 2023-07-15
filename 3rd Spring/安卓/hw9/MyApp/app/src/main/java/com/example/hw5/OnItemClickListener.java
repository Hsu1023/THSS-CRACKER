package com.example.hw5;

import android.view.View;

public interface OnItemClickListener {
    public void onItemClick(View view, int position, String username, int avatar, String timestamp, String title, String content,int[] img);
}