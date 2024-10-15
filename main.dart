import 'package:flutter/material.dart';
import 'user_dashboard.dart';
import 'collector_dashboard.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'user_registration.dart'; // Import user registration page
import 'collector_registration.dart'; // Import collector registration page
import 'schedule_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Waste Management',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/userDashboard': (context) => UserDashboard(),
        '/collectorDashboard': (context) => CollectorDashboard(),
        '/userRegistration': (context) => UserRegistration(), // User registration route
        '/collectorRegistration': (context) => CollectorRegistration(), // Collector registration route
        '/schedule' :(context) => Schedule()
      },
    );
  }
}
