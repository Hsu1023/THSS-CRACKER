package com.example.hw5;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;



public class MessageListAdapter extends RecyclerView.Adapter<MessageListHolder> {

    private OnItemClickListener listener;
    private final MessageList messageList;
    private final LayoutInflater inflater;

    public MessageListAdapter(Context context, MessageList messageList, OnItemClickListener listener) {
        inflater = LayoutInflater.from(context);
        this.messageList = messageList;
        this.listener = listener;
    }

    @NonNull
    @Override
    public MessageListHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        // Inflate an item view.
        View mItemView = inflater.inflate(
                R.layout.message, parent, false);
        return new MessageListHolder(mItemView, this);
    }

    @Override
    public void onBindViewHolder(@NonNull MessageListHolder holder, int position) {

        // Retrieve the data for that position.
        String title = messageList.get(position).title;
        // Add the data to the view holder.
        holder.titleView.setText(title);
        String content = messageList.get(position).content;
        holder.contentView.setText(content);
        if(listener != null){
            //为ItemView设置监听器
            holder.titleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    listener.onItemClick(v, position, title, content);
                }
            });
        }
    }
    @Override
    public int getItemCount() {
        return messageList.size();
    }
}

class MessageListHolder extends RecyclerView.ViewHolder{
    public final TextView titleView;
    public final TextView contentView;
    private static final String LOG_TAG = MainActivity.class.getSimpleName();

    public MessageListHolder(@NonNull View itemView, MessageListAdapter adapter) {
        super(itemView);
        titleView = itemView.findViewById(R.id.title);
        contentView = itemView.findViewById(R.id.content);

    }
}