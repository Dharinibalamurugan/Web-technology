package com.example.font_change;

import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    TextView sampleText;
    Button changeStyleButton;
    boolean isChanged = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        sampleText = findViewById(R.id.sampleText);
        changeStyleButton = findViewById(R.id.changeStyleButton);

        changeStyleButton.setOnClickListener(v -> {
            if (!isChanged) {
                sampleText.setTextColor(Color.parseColor("#FF5722"));
                sampleText.setTypeface(
                    getResources().getFont(R.font.roboto_regular),
                    Typeface.BOLD_ITALIC
                );
                Toast.makeText(MainActivity.this,
                    "Style Changed!", Toast.LENGTH_SHORT).show();
            } else {
                sampleText.setTextColor(Color.BLACK);
                sampleText.setTypeface(Typeface.DEFAULT);
                Toast.makeText(MainActivity.this,
                    "Style Reset!", Toast.LENGTH_SHORT).show();
            }
            isChanged = !isChanged;
        });
    }
}
