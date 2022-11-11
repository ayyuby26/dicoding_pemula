import 'package:dicoding/ui/dashboard_screen.dart';
import 'package:dicoding/widgets/main_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  get _mainButton => MainButton(
        onTap: _toDashboardScreen,
        text: "Belajar Sekarang",
      );

  get _content => Row(
        children: [
          Expanded(
            child: Column(
              children: const [
                Text(
                  "Bangun Karirmu Sebagai Developer Profesional",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text("Mulai belajar terarah dengan learning path")
              ],
            ),
          ),
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/logo.png"),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _content,
                const SizedBox(height: 30),
                _mainButton,
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _toDashboardScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DashboardScreen(),
      ),
    );
  }
}
