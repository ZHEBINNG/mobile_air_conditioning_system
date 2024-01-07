import 'package:flutter/material.dart';
import 'package:mobile_air_conditioning_system/controller/controller.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenStateController controller = HomeScreenStateController();

  bool isPacUnitOn = false;
  int temperature = 22;
  int fanSpeed = 2;
  bool isAirSwingOn = false;

  @override
  void initState() {
    super.initState();
    controller.setAirSwingStatus(isAirSwingOn);
    controller.setPacStatus(isPacUnitOn);
    controller.setTemperature(temperature);
    controller.setFanSpeed(fanSpeed);
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
          children: [
            const SizedBox(height: 20),
            // _buildAcUnitListView(),
            const SizedBox(height: 20),
            const Text('Actions',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            _buildControlTile('Power', isPacUnitOn, Icons.power_settings_new,
                onToggle: () {
              controller.changePacStatus(isPacUnitOn);
              setState(() {
                isPacUnitOn = controller.getPacUnitStatus();
              });
            }),
            _buildControlTile(
                'Temperature', temperature, Icons.thermostat_outlined,
                onIncrease: () {
              controller.increaseTemperature(controller.getTemperature());
              setState(() {
                temperature = controller.getTemperature();
              });
            }, onDecrease: () {
              controller.decreaseTemperature(controller.getTemperature());
              setState(() {
                temperature = controller.getTemperature();
              });
            }),
            _buildControlTile('Fan Speed', fanSpeed, Icons.toys,
                onIncrease: () {
              controller.increaseFanSpeed(controller.getFanSpeed());
              setState(() {
                fanSpeed = controller.getFanSpeed();
              });
            }, onDecrease: () {
              controller.decreaseFanSpeed(controller.getFanSpeed());
              setState(() {
                fanSpeed = controller.getFanSpeed();
              });
            }),
            _buildControlTile(
                'Air Swing', isAirSwingOn, Icons.air,
                onToggle: () {
              controller.toggleAirSwing(isAirSwingOn);
              setState(() {
                isAirSwingOn = controller.getAirSwingStatus();
              });
            }),
          ],
        ),
      ),
    );
  }

  // Widget _buildAcUnitListView() {
  //   return Container(
  //     height: 60,
  //     child: ListView.builder(
  //       scrollDirection: Axis.horizontal,
  //       itemCount: 4,
  //       itemBuilder: (context, index) {
  //         return GestureDetector(
  //           onTap: () {
  //             setState(() {
  //               controller.selectedAcUnit = index + 1;
  //             });
  //           },
  //           child: Container(
  //             width: 80,
  //             alignment: Alignment.center,
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: <Widget>[
  //                 Icon(Icons.ac_unit,
  //                     color: controller.selectedAcUnit == index + 1
  //                         ? Colors.white
  //                         : Colors.white54),
  //                 Text('AC ${index + 1}',
  //                     style: TextStyle(
  //                         color: controller.selectedAcUnit == index + 1
  //                             ? Colors.white
  //                             : Colors.white54)),
  //               ],
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  Widget _buildControlTile(String title, dynamic value, IconData icon,
      {VoidCallback? onToggle,
      VoidCallback? onIncrease,
      VoidCallback? onDecrease}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Material(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Icon(icon, color: Colors.white, size: 30),
                const SizedBox(width: 30),
                SizedBox(
                  width: 200,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                ),
                if (onToggle != null) ...[
                  const SizedBox(width: 40),
                  Switch(
                    value: value,
                    onChanged: (bool newValue) {
                      onToggle();
                    },
                    activeColor: Colors.green,
                  )
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.remove, color: Colors.white),
                        onPressed: onDecrease,
                      ),
                      Text('$value',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20)),
                      IconButton(
                        icon: const Icon(Icons.add, color: Colors.white),
                        onPressed: onIncrease,
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
        ),
     ),
    );
  }
}