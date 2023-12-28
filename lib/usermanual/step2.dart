import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/step3.dart';

class Step2 extends StatelessWidget {
  // Dummy list of available Bluetooth devices (replace with actual devices)
  final List<String> availableDevices = ['Device 1', 'Device 2', 'Device 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 2: Bluetooth Pairing'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue, Colors.indigo, Colors.blue.shade800],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Icon(Icons.bluetooth, size: 100, color: Colors.white),
            SizedBox(height: 20),
            Text(
              'Available Bluetooth Devices',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200, // Adjust the height as needed
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: availableDevices.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      availableDevices[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    // Add onTap functionality for device selection if needed
                    onTap: () {
                      // Handle device selection here
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Step3
          Navigator.push(context, MaterialPageRoute(builder: (context) => Step3()));
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
