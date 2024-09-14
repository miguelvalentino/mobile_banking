import 'package:flutter/material.dart';

void main() {
  runApp(const accinfo());
}

class accinfo extends StatelessWidget {
  const accinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Account Info',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bank Account Info'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG_bank.png"), // Path to your image
            fit: BoxFit.cover, // Adjust image to fill the container
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Aksi saat tombol Info Saldo diklik
                },
                child: const Text('Info Saldo'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Aksi saat tombol Mutasi Rekening diklik
                },
                child: const Text('Mutasi Rekening'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Aksi saat tombol Rekening Deposito diklik
                },
                child: const Text('Rekening Deposito'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
