package com.example.internet;

import android.content.Context;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

import androidx.test.espresso.UiController;
import androidx.test.espresso.ViewAction;
import androidx.test.espresso.matcher.ViewMatchers;
import androidx.test.ext.junit.rules.ActivityScenarioRule;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.ext.junit.runners.AndroidJUnit4;

import org.hamcrest.Matcher;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;

import static androidx.test.espresso.Espresso.onView;
import static androidx.test.espresso.action.ViewActions.click;
import static androidx.test.espresso.action.ViewActions.replaceText;
import static androidx.test.espresso.matcher.ViewMatchers.withId;
import static org.junit.Assert.*;

/**
 * Instrumented test, which will execute on an Android device.
 *
 * @see <a href="http://d.android.com/tools/testing">Testing documentation</a>
 */
@RunWith(AndroidJUnit4.class)
public class ExampleInstrumentedTest {
    @Rule
    public ActivityScenarioRule<MainActivity> activityScenarioRule
            = new ActivityScenarioRule<>(MainActivity.class);

    public String getText(Matcher<View> matcher) {

        final String[] text = {""};
        onView(matcher).perform(new ViewAction() {
            @Override
            public Matcher<View> getConstraints() {
                return ViewMatchers.isAssignableFrom(TextView.class);
            }

            @Override
            public String getDescription() {
                return "textView";
            }

            @Override
            public void perform(UiController uiController, View view) {
                TextView result = (TextView)view;
                text[0] = result.getText().toString();
            }
        });
        return text[0];
    }

    @Test
    public void test() {
        onView(withId(R.id.username)).perform(replaceText("1"));
        onView(withId(R.id.password)).perform(replaceText("1"));
        onView(withId(R.id.httpurl)).perform(click());
        String result = getText(withId(R.id.result));
        try{
            JSONObject json = new JSONObject(result);
            assertArrayEquals("invalid username or password".getBytes(),json.getString("error").getBytes());
            assertEquals(16,json.getInt("code"));
        }
        catch (JSONException e){
            e.printStackTrace();
        }
    }

    @Test
    public void test2() {
        onView(withId(R.id.username)).perform(replaceText("1"));
        onView(withId(R.id.password)).perform(replaceText("1"));
        onView(withId(R.id.httpurl)).perform(click());
        String result = getText(withId(R.id.result));
        try{
            JSONObject json = new JSONObject(result);
            assertArrayEquals("invalid username or password".getBytes(),json.getString("error").getBytes());
            assertEquals(16,json.getInt("code"));
        }
        catch (JSONException e){
            e.printStackTrace();
        }
    }

    @Test
    public void test3() {
        onView(withId(R.id.username)).perform(replaceText("admin"));
        onView(withId(R.id.password)).perform(replaceText("adminlllllora!"));
        onView(withId(R.id.httpurl)).perform(click());
        String result = getText(withId(R.id.result));
        try{
            JSONObject json = new JSONObject(result);
            String jwt = json.getString("jwt");
            assertEquals(235, jwt.length());
        }
        catch (JSONException e){
            e.printStackTrace();
        }
    }

    @Test
    public void test4() {
        onView(withId(R.id.username)).perform(replaceText("admin"));
        onView(withId(R.id.password)).perform(replaceText("adminlllllora!"));
        onView(withId(R.id.httpurl)).perform(click());
        String result = getText(withId(R.id.result));
        try{
            JSONObject json = new JSONObject(result);
            String jwt = json.getString("jwt");
            assertEquals(235, jwt.length());
        }
        catch (JSONException e){
            e.printStackTrace();
        }
    }
}
