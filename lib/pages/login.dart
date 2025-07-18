import 'package:flutter/material.dart';

void main() {
  runApp(const CarWashApp());
}

class CarWashApp extends StatelessWidget {
  const CarWashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Wash Management',
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 12,
                spreadRadius: 4,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFF3B82F6),
                child: Icon(Icons.directions_car, color: Colors.white, size: 30),
              ),
              const SizedBox(height: 20),
              const Text(
                "Car Wash Management",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Sign in to your account",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 25),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.login, color: Colors.white),
                  label: const Text(
  "Sign In",
  style: TextStyle(color: Colors.white),
),

                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: const Color(0xFF3B82F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    // Add login logic here
                  },
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      // Navigate to SignUp
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xFF3B82F6), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
