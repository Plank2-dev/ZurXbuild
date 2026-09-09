import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MrPlanktonApp());
}

class MrPlanktonApp extends StatelessWidget {
  const MrPlanktonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MR.PLANKTON',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        fontFamily: 'Orbitron',
        scaffoldBackgroundColor: const Color(0xFF05070B),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00E5FF),
          brightness: Brightness.dark,
        ),
      ),
      home: const BuildTemplateHome(),
    );
  }
}

class BuildTemplateHome extends StatelessWidget {
  const BuildTemplateHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MR.PLANKTON')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.rocket_launch_rounded, size: 72),
              const SizedBox(height: 20),
              const Text(
                'ZUR X-BUILD TEMPLATE',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 10),
              const Text(
                'MR.PLANKTON\ncom.plankdev.icsa',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              FilledButton.icon(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Template APK siap digunakan.')),
                ),
                icon: const Icon(Icons.check_circle_outline),
                label: const Text('TEST BUILD'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
