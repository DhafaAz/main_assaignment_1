import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  // Constructor untuk menerima username
  DashboardPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: Text(
          "Selamat datang di Dashboard, $username!",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
