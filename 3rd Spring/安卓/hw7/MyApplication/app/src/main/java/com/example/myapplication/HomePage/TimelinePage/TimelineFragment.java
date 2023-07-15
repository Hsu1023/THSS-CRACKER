package com.example.myapplication.HomePage.TimelinePage;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.example.myapplication.R;

public class TimelineFragment extends Fragment {

    private static final String LOG_TAG = TimelineFragment.class.getSimpleName();

    private MessageList messageList = new MessageList();
    private RecyclerView recyclerView;
    private MessageListAdapter adapter;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (savedInstanceState != null){
            Log.d(LOG_TAG, "putoutSaved");
            messageList = (MessageList)savedInstanceState.getSerializable("data");
        }
        else {
            Log.d(LOG_TAG, "init");
            init();
        }

    }


    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.timeline_fragment, container, false);

        recyclerView = view.findViewById(R.id.recyclerview);
        adapter = new MessageListAdapter(requireContext(), messageList, new OnItemClickListener() {
            @Override
            public void onItemClick(View view, int position, String username, int avatar, String timestamp, String title, String content, int[] img) {
                jump(username, avatar, timestamp, title, content, img);
            }});
        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        Button button = (Button) view.findViewById(R.id.add_button);
        button.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View v)
            {
                messageList.insert("Felix", R.drawable.avatar2, "11:50","【打卡美好生活】" , "今天也有努力摸鱼哦~", new int[]{R.drawable.pyq_5, R.drawable.null_img,R.drawable.null_img});
                adapter.notifyDataSetChanged();
            }
        });
        return view;
    }
    public void addMessage(View view){
        messageList.insert("Felix", R.drawable.avatar2, "11:50","【打卡美好生活】" , "今天也有努力摸鱼哦~", new int[]{R.drawable.pyq_5, R.drawable.null_img,R.drawable.null_img});
        adapter.notifyDataSetChanged();
    }

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

    public void jump(String username, int avatar, String timestamp, String title, String content, int[] img){

        Intent intent = new Intent(getActivity(), SecondActivity.class);
        intent.putExtra("username", username);
        intent.putExtra("avatar", avatar);
        intent.putExtra("timestamp", timestamp);
        intent.putExtra("title", title);
        intent.putExtra("content", content);
        intent.putExtra("img", img);
        Log.d(LOG_TAG, "123");
        startActivity(intent);
    }
}