package com.example.internet;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;

public class ErrorDialog {
    public void showError(final Context context, final String message) {
        // Create a Handler associated with the main thread's Looper
        Handler mainHandler = new Handler(Looper.getMainLooper());

        // Post a Runnable to be executed on the main thread
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle("Error")
                        .setMessage(message)
                        .setPositiveButton("OK", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                // Handle OK button click if needed
                            }
                        })
                        .show();
            }
        });
    }
}
