import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:object_detection/camera/home_view.dart';
import 'package:object_detection/screens/login.dart';
//import 'package:object_detection/ui/imagepick.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:object_detection/screens/adminReq.dart';
import 'package:object_detection/screens/adminlogin.dart';
import 'package:object_detection/screens/manageMedList.dart';
import 'package:object_detection/screens/pharmScanResults.dart';
import 'package:object_detection/screens/userRegister.dart';
import 'package:object_detection/screens/userScanRes.dart';
import 'package:object_detection/screens/scanningpres.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var status = await Permission.storage.status;
  if (!status.isGranted) {
    await Permission.storage.request();
  }
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Object Detection TFLite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
