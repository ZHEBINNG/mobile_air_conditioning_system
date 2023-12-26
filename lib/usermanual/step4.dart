import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/pages/home.dart';

class Step4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 4'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Set app bar background color
      ),
      body: Container(
        color: Colors.blue.shade50, // Set the background color
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Connection Established Successfully',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, // Set text color to black
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to HomeScreen
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text('Done'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set text color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
