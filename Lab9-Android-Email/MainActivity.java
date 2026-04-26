package com.example.emailapp;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText editTo, editSubject, editMessage;
    Button btnSend;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Link XML elements
        editTo      = findViewById(R.id.editTo);
        editSubject = findViewById(R.id.editSubject);
        editMessage = findViewById(R.id.editMessage);
        btnSend     = findViewById(R.id.btnSend);

        btnSend.setOnClickListener(v -> sendEmail());
    }

    private void sendEmail() {
        String to      = editTo.getText().toString().trim();
        String subject = editSubject.getText().toString().trim();
        String message = editMessage.getText().toString().trim();

        // Validate fields
        if (to.isEmpty()) {
            Toast.makeText(this,
                "Please enter recipient email!", Toast.LENGTH_SHORT).show();
            return;
        }

        if (!android.util.Patterns.EMAIL_ADDRESS.matcher(to).matches()) {
            Toast.makeText(this,
                "Please enter a valid email address!", Toast.LENGTH_SHORT).show();
            return;
        }

        if (subject.isEmpty()) {
            Toast.makeText(this,
                "Please enter a subject!", Toast.LENGTH_SHORT).show();
            return;
        }

        if (message.isEmpty()) {
            Toast.makeText(this,
                "Please enter a message!", Toast.LENGTH_SHORT).show();
            return;
        }

        // Create email intent
        Intent intent = new Intent(Intent.ACTION_SENDTO);
        intent.setData(Uri.parse("mailto:"));
        intent.putExtra(Intent.EXTRA_EMAIL,   new String[]{to});
        intent.putExtra(Intent.EXTRA_SUBJECT, subject);
        intent.putExtra(Intent.EXTRA_TEXT,    message);

        // Open email client
        try {
            startActivity(Intent.createChooser(intent, "Send Email Using..."));
            Toast.makeText(this,
                "Opening email client...", Toast.LENGTH_SHORT).show();
        } catch (Exception e) {
            Toast.makeText(this,
                "No email app found on this device!", Toast.LENGTH_LONG).show();
        }
    }
}
