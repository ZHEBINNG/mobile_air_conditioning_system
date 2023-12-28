import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPacUnitOn = false;
  int temperature = 22;
  int fanSpeed = 3;
  bool isAirSwingOn = false;
  int selectedAcUnit = 1;

  void sendSignalToPacUnit() {
    print('Signal sent to PAC unit');
  }

  void processSignalInPacUnit() {
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
      isAirSwingOn = false;
    });
    showMessage('PAC unit is turned off successfully');
  }

  void increaseTemperature() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      temperature = (temperature < 30) ? temperature + 1 : 30;
    });
    showTemperature();
  }

  void decreaseTemperature() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      temperature = (temperature > 16) ? temperature - 1 : 16;
    });
    showTemperature();
  }

  void increaseFanSpeed() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
      fanSpeed = (fanSpeed < 5) ? fanSpeed + 1 : 5;
    });
    showFanSpeed();
  }

  void decreaseFanSpeed() {
    sendSignalToPacUnit();
    processSignalInPacUnit();
    setState(() {
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
    print(message);
  }

  void showTemperature() {
    print('Current Temperature: $temperature');
  }

  void showFanSpeed() {
    print('Current Fan Speed: $fanSpeed');
  }

  void showAirSwingStatus() {
    print('Air Swing is ${isAirSwingOn ? 'running' : 'idle'}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            _buildAcUnitListView(),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Actions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            _buildControlTile('Power', isPacUnitOn, Icons.power_settings_new, onToggle: () {
              setState(() {
                isPacUnitOn = !isPacUnitOn;
                if (!isPacUnitOn) {
                  isAirSwingOn = false;
                }
              });
            }),
            _buildControlTile('Temperature', temperature, Icons.thermostat_outlined, onIncrease: increaseTemperature, onDecrease: decreaseTemperature),
            _buildControlTile('Fan Speed', fanSpeed, Icons.toys, onIncrease: increaseFanSpeed, onDecrease: decreaseFanSpeed),
            _buildControlTile('Air Swing', isAirSwingOn, Icons.air, onToggle: toggleAirSwing),
          ],
        ),
      ),
    );
  }

  Widget _buildAcUnitListView() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedAcUnit = index + 1;
              });
            },
            child: Container(
              width: 80,
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.ac_unit, color: selectedAcUnit == index + 1 ? Colors.white : Colors.white54),
                  Text('AC ${index + 1}', style: TextStyle(color: selectedAcUnit == index + 1 ? Colors.white : Colors.white54)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildControlTile(String title, dynamic value, IconData icon, {VoidCallback? onToggle, VoidCallback? onIncrease, VoidCallback? onDecrease}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(icon, color: Colors.white, size: 30),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                if (onToggle != null)
                  Switch(
                    value: value,
                    onChanged: (bool newValue) {
                      onToggle(); // Call the provided callback here
                    },
                    activeColor: Colors.green,
                  )
                else
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.white),
                        onPressed: onDecrease,
                      ),
                      Text('$value', style: const TextStyle(color: Colors.white, fontSize: 20)),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.white),
                        onPressed: onIncrease,
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
