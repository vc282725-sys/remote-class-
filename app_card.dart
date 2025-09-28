import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String username;

  DashboardScreen({required this.username});

  final List<Map<String, dynamic>> _features = [
    {"title": "Join Live Class", "icon": Icons.video_call},
    {"title": "Assignments", "icon": Icons.assignment},
    {"title": "Offline Notes", "icon": Icons.download},
    {"title": "Profile", "icon": Icons.person},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome, $username"),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: _features.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${_features[index]['title']} clicked"),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    _features[index]['icon'],
                    size: 50,
                    color: Colors.indigo,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _features[index]['title'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
