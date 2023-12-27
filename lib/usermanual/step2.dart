import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/step3.dart';

class Step2 extends StatelessWidget {
  // random list of available Bluetooth devices (replace with actual devices)
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
            const SizedBox(height: 40),
            const Icon(Icons.bluetooth, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            const Text(
              'Available Bluetooth Devices',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200, 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: availableDevices.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      availableDevices[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      // if any device selected 
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
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
