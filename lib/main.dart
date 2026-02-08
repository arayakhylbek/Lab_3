import 'package:flutter/material.dart';

void main() {
  runApp(const Lab3App());
}

class Lab3App extends StatelessWidget {
  const Lab3App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Task 1: AppBar
      appBar: AppBar(
        title: const Text(
          'Lab 3: Layout Basics',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 4,
      ),
      
      // Task 2: Background Color
      backgroundColor: Colors.grey[300],
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        
        // Task 3: Column for body layout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            // Task 4: First Container
            Container(
              padding: const EdgeInsets.all(16), // Padding inside container
              decoration: BoxDecoration(
                color: Colors.blue, // Blue background
                borderRadius: BorderRadius.circular(12), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    offset: const Offset(2, 2), // Shadow position
                    blurRadius: 6, // Shadow blur
                  ),
                ],
              ),
              child: const Text(
                'Welcome to Flutter!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            // Spacing between containers (Task 3)
            const SizedBox(height: 16),
            
            // Task 5: Second Container
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.green, // Green background
                borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border.all(
                  color: Colors.white, // White border color
                  width: 2, // Border width
                ),
              ),
              child: Row(
                // Space between left and right text
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Left Text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const Text(
                    'Right Text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            
            // Additional container for practice (optional)
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.teal,
                  width: 1,
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    'Layout Elements Used:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '• Container\n• Text\n• Column\n• Row\n• Padding\n• Margin\n• AppBar\n• BoxDecoration',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}