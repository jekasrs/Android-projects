package com.sae.giffapp2;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.os.StrictMode;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;

import org.json.JSONException;
import org.json.JSONObject;

import java.net.HttpURLConnection;
import java.net.URL;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    private final List<String[]> hash = new LinkedList<>();
    private Integer currentIDGiff = -2;

    private LinearLayout linearLayout;
    private ImageView imageView;
    private TextView textView;

    private String currentGifURL;
    private String currentGifDescription;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        linearLayout = findViewById(R.id.mainLinear);
        imageView = findViewById(R.id.mainImageView);
        textView = findViewById(R.id.mainTextView);
    }

    public void setterUI(String imgURL, String txtOfURL) {
        imageView.setBackgroundResource(R.drawable.wait_picture);
        Glide.with(linearLayout)
                .load(imgURL)
                .error(R.drawable.error_picture)
                .into(imageView);
        if (currentGifDescription.length() > 40)
            textView.setTextSize(18);
        else
            textView.setTextSize(20);
        textView.setText(txtOfURL);
    }

    public String[] getNextGiff() throws InterruptedException {

        String[] strings = new String[2];
        Thread th = new Thread(new Runnable() {
            @Override
            public void run() {
                HttpURLConnection urlConnection = null;
                JSONObject jo = new JSONObject();
                StringBuilder jsonString = new StringBuilder();
                try {
                    URL random = new URL("https://developerslife.ru/random?json=true");

                    urlConnection = (HttpURLConnection) random.openConnection();
                    urlConnection.setRequestMethod("GET");
                    urlConnection.setConnectTimeout(100000);

                    InputStream in = urlConnection.getInputStream();

                    if (in == null)
                        throw new Exception();
                    InputStreamReader isw = new InputStreamReader(in);

                    int data = isw.read();
                    while (data != -1) {
                        char current = (char) data;
                        data = isw.read();
                        jsonString.append(current);
                    }

                    jo = new JSONObject(jsonString.toString());
                    currentGifURL = (String) jo.get("gifURL");
                    currentGifDescription = (String) jo.get("description");
                    hash.add(new String[]{
                            currentGifURL,
                            currentGifDescription
                    });
                    strings[0] = currentGifURL;
                    strings[1] = currentGifDescription;

                } catch (Exception e) {
                    imageView.setBackgroundResource(R.drawable.error_picture);
                } finally {
                    if (urlConnection != null)
                        urlConnection.disconnect();
                }

            }
        });
        th.start();
        th.join();
        return strings;
    }

    public void onClickLastGif(View view) {
        if (hash.size() < 1)
            return;

        if (currentIDGiff != -2)
            currentIDGiff--;

        if (currentIDGiff == -2)
            currentIDGiff = hash.size() - 2;

        if (currentIDGiff < 0) {
            currentIDGiff = 0;
            return;
        }
        setterUI(hash.get(currentIDGiff)[0], hash.get(currentIDGiff)[1]);
    }

    public void onClickNextGif(View view) throws InterruptedException, JSONException {

        if (currentIDGiff > -1 && currentIDGiff != hash.size() - 1) {
            currentIDGiff++;
            setterUI(hash.get(currentIDGiff)[0], hash.get(currentIDGiff)[1]);
            return;
        }

        currentIDGiff = -2;
        String[] strings = getNextGiff();
        setterUI(strings[0], strings[1]);
    }
}