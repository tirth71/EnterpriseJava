/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.assignment2.util;

import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;

public class EmailUtil {

    private static final String FROM_EMAIL = "yourgmail@gmail.com";
    private static final String PASSWORD = "your_app_password";

    public static void sendBirthdayMail(String toEmail, String username) {

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(FROM_EMAIL, PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(FROM_EMAIL));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(toEmail)
            );
            message.setSubject("🎉 Happy Birthday from Fashion Store!");

            message.setText(
                    "Dear " + username + ",\n\n" +
                    "🎂 Wishing you a very Happy Birthday!\n\n" +
                    "Enjoy exclusive offers from Fashion Store.\n\n" +
                    "Regards,\nFashion Store Team"
            );

            Transport.send(message);
            System.out.println("Birthday email sent to " + toEmail);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
