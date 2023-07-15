package com.example.myapplication;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import com.example.myapplication.HomePage.HomeFragment;

public class BottomAdapter extends FragmentStateAdapter {
    public BottomAdapter(@NonNull FragmentActivity fragmentActivity) {
        super(fragmentActivity);
    }

    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case 0:
                return new HomeFragment();
            default:
                return new BlankFragment();
        }
    }
    @Override
    public int getItemCount() {
        return 4;
    }
}
