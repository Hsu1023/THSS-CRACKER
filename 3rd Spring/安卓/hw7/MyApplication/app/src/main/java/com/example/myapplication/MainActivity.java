package com.example.myapplication;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.MenuItem;
import android.app.Fragment;
import android.view.View;
import android.widget.FrameLayout;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationBarView;
import com.google.android.material.tabs.TabLayout;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.viewpager2.widget.ViewPager2;


public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        BottomNavigationView bottomNavigationView = findViewById(R.id.bottomNav);

        BottomAdapter bottomAdapter = new BottomAdapter(this);
        ViewPager2 viewPager = findViewById(R.id.bottom_pager);
        viewPager.setUserInputEnabled(false);
        viewPager.setAdapter(bottomAdapter);

        bottomNavigationView.setOnItemSelectedListener(new NavigationBarView.OnItemSelectedListener() {
            @SuppressLint("NonConstantResourceId")
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                switch(item.getItemId()) {
                    case R.id.bottom_home:
                        viewPager.setCurrentItem(0);
                        return true;
                    case R.id.bottom_topic:
                        viewPager.setCurrentItem(1);
                        return true;
                    case R.id.bottom_guide:
                        viewPager.setCurrentItem(2);
                        return true;
                    case R.id.bottom_mine:
                        viewPager.setCurrentItem(3);
                        return true;
                }
                return false;
            }
        });
    }

}