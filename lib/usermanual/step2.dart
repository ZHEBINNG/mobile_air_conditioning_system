import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/step3.dart';

class Step2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 2'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Set app bar background color
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue.shade50, // Set the background color
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Perform device pairing via Bluetooth',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black, // Set text color to black
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center, // Center the text
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to Step3
                Navigator.push(context, MaterialPageRoute(builder: (context) => Step3()));
              },
              child: const Text('Next'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Set text color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
