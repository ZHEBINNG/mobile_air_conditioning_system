import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/usermanual/step4.dart';

class Step3 extends StatefulWidget {
  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step 3: Bluetooth Pairing Request'),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView( 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.bluetooth,
                    size: 100,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bluetooth Pairing Request',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'AC1 would like to pair with your device.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200, 
                    child: TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Enter Password',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Navigate back to Step2
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        child: const Text('Cancel'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Check password and navigate accordingly
                          String enteredPassword = _passwordController.text;
                          if (enteredPassword == '1234') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Step4()));
                          } else {
                            // Show password incorrect message
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue),
                        child: const Text('Pair'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
