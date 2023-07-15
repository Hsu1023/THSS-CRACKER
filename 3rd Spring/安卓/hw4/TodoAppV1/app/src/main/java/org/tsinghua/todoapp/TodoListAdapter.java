package org.tsinghua.todoapp;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RadioButton;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.LinkedList;

public class TodoListAdapter extends RecyclerView.Adapter<TodoViewHolder> {
    private final TodoList todoList;
    private final LayoutInflater inflater;

    public TodoListAdapter(Context context, TodoList todoList) {
        inflater = LayoutInflater.from(context);
        this.todoList = todoList;
    }

    @NonNull
    @Override
    public TodoViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        // Inflate an item view.
        View mItemView = inflater.inflate(
                R.layout.todolist_item, parent, false);
        return new TodoViewHolder(mItemView, this);
    }

    @Override
    public void onBindViewHolder(@NonNull TodoViewHolder holder, int position) {
        // Retrieve the data for that position.
        String current = todoList.get(position).getContent();
        // Add the data to the view holder.
        holder.todoItemView.setText(current);
        current = todoList.get(position).getCreateAt();
        holder.timeView.setText(current);
    }

    @Override
    public int getItemCount() {
        return todoList.size();
    }

    public TodoList getTodoList() {
        return todoList;
    }
}

class TodoViewHolder extends RecyclerView.ViewHolder{
    public final TextView todoItemView;
    public final TextView timeView;

    public TodoViewHolder(@NonNull View itemView, TodoListAdapter adapter) {
        super(itemView);
        todoItemView = itemView.findViewById(R.id.todo);
        timeView = itemView.findViewById(R.id.time);
        ImageButton imageButton = itemView.findViewById(R.id.imageButton);
        imageButton.setOnClickListener(view -> {
            // Get the position of the item that was clicked.
            int position = getLayoutPosition();
            adapter.getTodoList().delete(position);
            // Notify the adapter, that the data has changed so it can
            // update the RecyclerView to display the data.
            adapter.notifyDataSetChanged();
        });
    }
}