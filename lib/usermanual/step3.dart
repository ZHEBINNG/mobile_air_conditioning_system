import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/step4.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 3'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Set app bar background color
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue.shade50, // Set the background color
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bluetooth Pairing Request',
                      style: TextStyle(
                        fontSize: 20.0, // Set font size to be larger
                        fontWeight: FontWeight.bold, // Make it bold
                      ),
                    ),
                    const Text('AC1 would like to pair with your device.'),
                    TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(labelText: 'Enter Password'),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigate back to Step2
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Check password and navigate accordingly
                            String enteredPassword = _passwordController.text;
                            if (enteredPassword == '1234') {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Step4()));
                            } else {
                              // Show password incorrect message
                              // You can display a snackbar or any other UI feedback
                            }
                          },
                          child: const Text('Pair'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
