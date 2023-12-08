import 'package:flutter/material.dart';
import 'screens/mail_screen.dart';
import 'screens/meet_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MailScreen(),
      // Add routes for navigation between Mail and Meet screens
      routes: {
        '/mail': (context) => MailScreen(),
        '/meet': (context) => MeetScreen(),
      },
      onGenerateRoute: (settings) {
        // Handle named routes here
        if (settings.name == '/meet') {
          return MaterialPageRoute(
            builder: (context) => MeetScreen(),
          );
        }
        return null;
      },
    );
  }
}
