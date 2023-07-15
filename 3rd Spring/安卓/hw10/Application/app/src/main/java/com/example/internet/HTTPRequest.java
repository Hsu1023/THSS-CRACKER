package com.example.internet;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Objects;

import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Callback;
import okhttp3.RequestBody;

public class HTTPRequest {
    private HashMap<String, String> param = new HashMap<>();
    public void addParam(String k, String v){
        if (k.length() != 0)
            param.put(k, v);
    }
    public void get(String requestUrl, Callback callback){
        OkHttpClient client = new OkHttpClient();
        HttpUrl.Builder urlBuilder = Objects.requireNonNull(HttpUrl.parse(requestUrl)).newBuilder();
        for (HashMap.Entry < String, String > entry: param.entrySet()){
            urlBuilder.addQueryParameter(entry.getKey(), entry.getValue());
        }
        Request.Builder builder = new Request.Builder().url(urlBuilder.build());
        Request request = builder.get().build();
        client.newCall(request).enqueue(callback);
    }
    public void postMedia(String requestUrl, Callback callback){
        MultipartBody.Builder urlBuilder = new MultipartBody.Builder().setType(MultipartBody.FORM);
        OkHttpClient client = new OkHttpClient();
        for (HashMap.Entry < String, String > entry: param.entrySet()){
            urlBuilder.addFormDataPart(entry.getKey(), entry.getValue());
        }
        Request request = new Request.Builder().url(requestUrl).post(urlBuilder.build()).build();
        client.newCall(request).enqueue(callback);
    }
    public void post(String requestUrl, Callback callback) {
        OkHttpClient client = new OkHttpClient();
        JSONObject jsonParams = new JSONObject();
        for (HashMap.Entry<String, String> entry : param.entrySet()) {
            try {
                jsonParams.put(entry.getKey(), entry.getValue());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        // Create request body with JSON data
        MediaType mediaType = MediaType.parse("application/json; charset=utf-8");
        RequestBody requestBody = RequestBody.create(mediaType, jsonParams.toString());
        // Build request
        Request request = new Request.Builder()
                .url(requestUrl)
                .post(requestBody)
                .build();
        // Send request
        client.newCall(request).enqueue(callback);
    }
}
