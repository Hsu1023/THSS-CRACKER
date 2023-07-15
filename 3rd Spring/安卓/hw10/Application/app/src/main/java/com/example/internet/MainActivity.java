package com.example.internet;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;

import org.jetbrains.annotations.NotNull;
import java.io.IOException;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

public class MainActivity extends AppCompatActivity {

    private EditText username, password;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        username = findViewById(R.id.username);
        password = findViewById(R.id.password);
        SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("user", Context.MODE_PRIVATE);
        boolean hasLogin = sharedPreferences.getBoolean("login", false);
        if (hasLogin){
            usr = sharedPreferences.getString("username", "");
            pwd = sharedPreferences.getString("password", "");
            HTTPRequest loginRequest = new HTTPRequest();
            loginRequest.addParam("username", usr);
            loginRequest.addParam("password", pwd);
            loginRequest.post(loginUrl, loginCallback);
        }
    }

    public void onRegisterClick(View v){
        Intent intent = new Intent(this, RegisterActivity.class);
        startActivity(intent);
    }
    String loginUrl = "http://129.211.216.10:5000/login/";
    String usr = "";
    String pwd = "";
    final Context context = this;
    Callback loginCallback = new Callback() {
        @Override
        public void onFailure(@NotNull Call call, @NotNull IOException e) {Log.d("Error", e.toString());}
        @Override
        public void onResponse(@NotNull Call call, @NotNull final Response response) throws IOException {
            int statusCode = response.code();
            if (statusCode == 401){
                ErrorDialog error = new ErrorDialog();
                error.showError(context, "密码不正确");
            } else if (statusCode == 200) {
                SharedPreferences sharedPreferences = getSharedPreferences("user", Context.MODE_PRIVATE);
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putBoolean("login", true);
                editor.putString("username", usr);
                editor.putString("password", pwd);
                editor.apply();
                Intent intent = new Intent(context, SuccessActivity.class);
                intent.putExtra("username", usr);
                startActivity(intent);
            }

        }
    };
    public void onLoginClick(View v){
        usr = username.getText().toString();
        pwd = password.getText().toString();
        if(usr.isEmpty()||pwd.isEmpty()){
            return;
        }
        try{
            HTTPRequest loginRequest = new HTTPRequest();
            loginRequest.addParam("username", usr);
            loginRequest.addParam("password", pwd);
            loginRequest.post(loginUrl, loginCallback);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }


}
