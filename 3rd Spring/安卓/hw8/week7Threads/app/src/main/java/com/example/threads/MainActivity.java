package com.example.threads;

import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    TextView textView;
    ProAndCon test;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textView = findViewById(R.id.textView);
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        textView.setText("");

        test = new ProAndCon(10,100);
    }


    public void onProducerClick(View v){
        test.addProducer();
    }

    public void onConsumerClick(View v){
        test.addConsumer();
    }

    class ProAndCon {
        private final List<Integer> queue;
        int count = 0;
        int stop;
        int max;

        ProAndCon(int length, int stop){
            queue = new ArrayList<>();
            max=length;
            this.stop = stop;
        }

        class producer implements Runnable{
            int ms,n;
            producer(int ms,int n){
                this.ms = ms;
                this.n=n;
            }
            @Override
            public void run() {
                System.out.println(Thread.currentThread().getName());
                try {
                    while (count<stop) {
                        produce();
                        Thread.sleep(ms);
                    }
                }
                catch (Exception e){
                    e.printStackTrace();
                }
            }

            void produce() throws Exception {
                synchronized (queue){
                    // TO DO
                    for (int i = 1; i <= n && queue.size() < max && count < stop; i++){
                        queue.add(++count);
                        String text = Thread.currentThread().getName() + "生产了:" + count + "还剩:" + queue.size() + "\n";
                        textView.setText(textView.getText() + text);
                    }
                    queue.notifyAll();
                }
            }
        }

        class consumer implements  Runnable{
            int ms;
            consumer(int ms){
                this.ms = ms;
            }
            @Override
            public void run() {
                System.out.println(Thread.currentThread().getName());
                try {
                    while (count<stop) {
                        consume();
                        Thread.sleep(ms);
                    }
                }
                catch (Exception e){
                    e.printStackTrace();
                }
            }

            void consume() throws Exception{
                synchronized (queue) {
                    // TO DO
                    if (queue.isEmpty()) {
                        queue.wait();
                    }
                    int consumed = queue.remove(0);
                    String text = Thread.currentThread().getName() + "消费了:" + consumed + "还剩:" + queue.size() + "\n";
                    textView.setText(textView.getText() + text);
                }
            }
        }

        void addProducer(){
            new Thread(new producer(20, 2)).start();
        }

        void addConsumer(){
            new Thread(new consumer(10)).start();
        }
    }
}



