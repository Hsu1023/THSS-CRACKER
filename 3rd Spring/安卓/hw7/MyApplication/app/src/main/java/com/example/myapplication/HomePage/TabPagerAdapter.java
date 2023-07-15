package com.example.myapplication.HomePage;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

import com.example.myapplication.BlankFragment;
import com.example.myapplication.HomePage.TimelinePage.TimelineFragment;

/**
 * A [FragmentPagerAdapter] that returns a fragment corresponding to
 * one of the sections/tabs/pages.
 */
public class TabPagerAdapter extends FragmentStateAdapter {


    public TabPagerAdapter(@NonNull FragmentActivity fragmentActivity) {
//        mContext = context;
        super(fragmentActivity);
    }

    @Override
    public Fragment createFragment(int position) {
        switch (position) {
            case 0:
                return new TimelineFragment();
            default:
                return new BlankFragment();
        }
    }

    @Override
    public int getItemCount() {
        return 4;
    }
}