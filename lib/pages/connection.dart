// // connection.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_blue/flutter_blue.dart';

// class ConnectionScreen extends StatefulWidget {
//   @override
//   _ConnectionScreenState createState() => _ConnectionScreenState();
// }

// class _ConnectionScreenState extends State<ConnectionScreen> {
//   FlutterBlue flutterBlue = FlutterBlue.instance;
//   List<BluetoothDevice> devices = [];

//   @override
//   void initState() {
//     super.initState();
//     _startScanning();
//   }

//   void _startScanning() {
//     flutterBlue.startScan(timeout: Duration(seconds: 4));

//     flutterBlue.scanResults.listen((results) {
//       for (ScanResult r in results) {
//         if (!devices.contains(r.device)) {
//           setState(() {
//             devices.add(r.device);
//           });
//         }
//       }
//     });

//     Future.delayed(Duration(seconds: 4), () {
//       flutterBlue.stopScan();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bluetooth Connection'),
//       ),
//       body: ListView.builder(
//         itemCount: devices.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(devices[index].name),
//             subtitle: Text(devices[index].id.toString()),
//             onTap: () {
//               // You can add connection logic here
//               // For simplicity, let's just print the selected device's information
//               print('Selected Device: ${devices[index].name}');
//               print('Device ID: ${devices[index].id}');

//               Navigator.pushNamed(context, '/home', arguments: devices[index]);
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class ConnectionDetailsScreen extends StatelessWidget {
//   final BluetoothDevice device;

//   ConnectionDetailsScreen({required Key key, required this.device}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Device Details'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text('Device: ${device.name}'),
//             Text('Device ID: ${device.id}'),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement the connection logic here
//                 // For simplicity, let's just print a message
//                 print('Connecting to ${device.name}...');
//               },
//               child: Text('Connect to Device'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
