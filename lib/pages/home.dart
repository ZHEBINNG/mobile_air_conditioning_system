import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPacUnitOn = false;
  int temperature = 25; // Initial temperature
  int fanSpeed = 1; // Initial fan speed
  bool isAirSwingOn = false;

  void sendSignalToPacUnit() {
    // Simulating the signal sending process
    // You can add your logic for sending signals to the PAC unit here
    print('Signal sent to PAC unit');
  }

  void processSignalInPacUnit() {
    // Simulating the signal processing in PAC unit
    // You can add your logic for processing signals in the PAC unit here
    print('PAC unit processes the signal');
  }

  void turnOnPacUnit() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      isPacUnitOn = true;
    });
    showMessage('PAC unit is turned on successfully');
  }

  void turnOffPacUnit() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      isPacUnitOn = false;
      isAirSwingOn = false; // Turning off air swing when PAC unit is turned off
    });
    showMessage('PAC unit is turned off successfully');
  }

  void increaseTemperature() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      // Ensure temperature is within the range [16, 32]
      temperature = (temperature < 32) ? temperature + 1 : 32;
    });
    showTemperature();
  }

  void decreaseTemperature() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      // Ensure temperature is within the range [16, 32]
      temperature = (temperature > 16) ? temperature - 1 : 16;
    });
    showTemperature();
  }

  void increaseFanSpeed() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      // Ensure fan speed is within the range [1, 5]
      fanSpeed = (fanSpeed < 5) ? fanSpeed + 1 : 5;
    });
    showFanSpeed();
  }

  void decreaseFanSpeed() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      // Ensure fan speed is within the range [1, 5]
      fanSpeed = (fanSpeed > 1) ? fanSpeed - 1 : 1;
    });
    showFanSpeed();
  }

  void toggleAirSwing() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      isAirSwingOn = !isAirSwingOn;
    });
    showAirSwingStatus();
  }

  void showMessage(String message) {
    // You can replace this with your own logic to display messages
    print(message);
  }

  void showTemperature() {
    // You can replace this with your own logic to display the current temperature
    print('Current Temperature: $temperature');
  }

  void showFanSpeed() {
    // You can replace this with your own logic to display the current fan speed
    print('Current Fan Speed: $fanSpeed');
  }

  void showAirSwingStatus() {
    // You can replace this with your own logic to display the air swing status
    print('Air Swing is ${isAirSwingOn ? 'running' : 'idle'}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAC Control App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: isPacUnitOn ? turnOffPacUnit : turnOnPacUnit,
              child: Text(isPacUnitOn ? 'Turn Off PAC Unit' : 'Turn On PAC Unit'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: increaseTemperature,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: decreaseTemperature,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 8),
                Text('Temperature: $temperature°C'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: increaseFanSpeed,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: decreaseFanSpeed,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 8),
                Text('Fan Speed: $fanSpeed'),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                ElevatedButton(
                  onPressed: toggleAirSwing,
                  child: Text(isAirSwingOn ? 'Deactivate Air Swing' : 'Activate Air Swing'),
                ),
                const SizedBox(width: 8),
                Text('Air Swing Status: ${isAirSwingOn ? 'Running' : 'Idle'}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
