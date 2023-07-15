package com.example.internet;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.Objects;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

public class RegisterActivity extends AppCompatActivity {

    private EditText username, password, password2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        username = findViewById(R.id.register_username);
        password = findViewById(R.id.register_password);
        password2 = findViewById(R.id.register_password2);
    }
    public void onRegisterClick(View v){
        String usr = username.getText().toString();
        String pwd = password.getText().toString();
        String pwd2 = password2.getText().toString();
        if (!pwd.equals(pwd2)){
            ErrorDialog error = new ErrorDialog();
            error.showError(this, "两次密码不一致");
            return;
        }
        if(usr.isEmpty()||pwd.isEmpty()||pwd2.isEmpty()||!pwd.equals(pwd2)){
            return;
        }
        try{
            String loginUrl = "http://129.211.216.10:5000/login/register/";
            Callback loginCallback = new Callback() {
                @Override
                public void onFailure(@NotNull Call call, @NotNull IOException e) {
                    Log.d("Error", e.toString());}
                @Override
                public void onResponse(@NotNull Call call, @NotNull final Response response) throws IOException {
                    String resStr = Objects.requireNonNull(response.body()).string();
                    int code = response.code();
                    Log.d("code", String.valueOf(code));
                    try {
                        JSONObject jsonObject = new JSONObject(resStr);
                        Boolean status = jsonObject.getBoolean("status");
                    }
                    catch (JSONException e){
                        Log.d("Error", e.toString());
                    }
                    finish();
                }
            };
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
