
import 'package:flutter/material.dart';

void main() => runApp(const TiempoApp());

class TiempoApp extends StatelessWidget {
  const TiempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather UI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TiempoAPPScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TiempoAPPScreen extends StatelessWidget {
  const TiempoAPPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back),
              const SizedBox(height: 10),
              const Text("Jun 2", style: TextStyle(color: Colors.grey)),
              const Text(
                "London",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "21°C",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Overcast Clouds", style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("This Week", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Text(
                "Temperatures",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Text("8 PM"),
                      Icon(Icons.cloud, color: Colors.grey),
                      Text("21°C"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("11 PM"),
                      Icon(Icons.cloud, color: Colors.grey),
                      Text("22°C"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Details",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Minimum", style: TextStyle(color: Colors.grey)),
                      Text("21°C", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Maximum", style: TextStyle(color: Colors.grey)),
                      Text("22°C", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pressure", style: TextStyle(color: Colors.grey)),
                      Text(
                        "1020 Pa",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Humidity", style: TextStyle(color: Colors.grey)),
                      Text(
                        "41%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
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
