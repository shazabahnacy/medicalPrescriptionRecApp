import 'package:flutter/material.dart';
import 'package:object_detection/camera/home_view.dart';
import 'package:object_detection/screens/manageMedList.dart';
import 'package:object_detection/screens/pharmScanResults.dart';
import 'package:object_detection/screens/userScanRes.dart';
import 'package:object_detection/screens/adminReq.dart';

class ScanningPage extends StatefulWidget {
  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                'App Menu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "RobotoMono",
                  fontSize: 30.0,
                ),
              )),
            ),
            ListTile(
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Scanning Prescriptions'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeView(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt_outlined,
                size: 30.0,
              ),
              title: Text(
                'Manage Medicine List',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageMedListPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.request_page,
                size: 30.0,
              ),
              title: Text(
                'Admin Requests',
                style: TextStyle(fontSize: 16.0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdminRequestPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('User medical prescriptions'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserScanResultsPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Pharmasict medical prescriptions'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PharmScanResultsPage(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFFF6F8FC),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 7,
              child: ScanContainer(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScanningPage(),
            ),
          );
        },
      ),
    );
  }
}

@override
class ScanContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 70, left: 20),
            child: Text(
              "Scan your prescriptions here",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: "Angel",
                fontSize: 65,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
          Icon(
            Icons.scanner_rounded,
            color: Colors.blueGrey,
            size: 80,
          ),
        ],
      ),
    );
  }
}
