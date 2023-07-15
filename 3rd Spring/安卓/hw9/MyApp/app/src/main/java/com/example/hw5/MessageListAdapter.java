package com.example.hw5;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ImageView;

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
        String username = messageList.get(position).username;
        holder.usernameView.setText(username);
        int avatar = messageList.get(position).avatar;
        holder.avatarView.setImageResource(avatar);
        String timestamp = messageList.get(position).timestamp;
        holder.timestampView.setText(timestamp);
        String title = messageList.get(position).title;
        holder.titleView.setText(title);
        String content = messageList.get(position).content;
        holder.contentView.setText(content);
        int[] img = messageList.get(position).img;
        for (int i = 0; i < 3; i++){
            holder.imgView[i].setImageResource(img[i]);
        }

        if(listener != null){
            //为ItemView设置监听器
            holder.titleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    listener.onItemClick(v, position, username, avatar, timestamp, title, content, img);
                }
            });
            holder.contentView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    listener.onItemClick(v, position, username, avatar, timestamp, title, content, img);
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
    public final TextView usernameView, timestampView, titleView, contentView;
    public final ImageView[] imgView = new ImageView[]{null, null, null};
    public final ImageView avatarView;
    private static final String LOG_TAG = MainActivity.class.getSimpleName();

    public MessageListHolder(@NonNull View itemView, MessageListAdapter adapter) {
        super(itemView);
        titleView = itemView.findViewById(R.id.title);
        avatarView = itemView.findViewById(R.id.avatar);
        contentView = itemView.findViewById(R.id.content);
        usernameView = itemView.findViewById(R.id.username);
        timestampView = itemView.findViewById(R.id.timestamp);
        imgView[0] = itemView.findViewById(R.id.img1);
        imgView[1] = itemView.findViewById(R.id.img2);
        imgView[2] = itemView.findViewById(R.id.img3);

    }
}