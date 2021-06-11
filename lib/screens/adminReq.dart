import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:object_detection/camera/home_view.dart';
import 'package:object_detection/screens/manageMedList.dart';
import 'package:object_detection/screens/pharmScanResults.dart';
import 'package:object_detection/screens/scanningpres.dart';
import 'package:object_detection/screens/userScanRes.dart';

class AdminRequestPage extends StatefulWidget {
  @override
  _AdminRequestPageState createState() => _AdminRequestPageState();
}

class _AdminRequestPageState extends State<AdminRequestPage> {
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
              flex: 3,
              child: TopContainer(),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              flex: 7,
              child: DownContainer(),
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
              builder: (context) => AdminRequestPage(),
            ),
          );
        },
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(20, 27),
          bottomRight: Radius.elliptical(20, 27),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.grey[400],
            offset: Offset(0, 3.5),
          )
        ],
        color: Colors.blue,
      ),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 50,
            ),
            child: Text(
              "Admin Requests",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Angel",
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            color: Colors.blue,
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 0.0),
          //   child: Center(
          //     child: Text(
          //       "Viewing Medical Records",
          //       style: TextStyle(
          //         fontSize: 17,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

@override
class DownContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: ListView(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 10.0),
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade900))),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        'Shaza Bahnacy wants to join as pharmastict',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.check_circle, color: Colors.green, size: 35.0),
                      Icon(Icons.cancel, color: Colors.red, size: 35.0),
                    ]),
                SizedBox(height: 40.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        'Esraa Hassan wants to join as pharmastict',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.check_circle, color: Colors.green, size: 35.0),
                      Icon(Icons.cancel, color: Colors.red, size: 35.0),
                    ]),
                SizedBox(height: 40.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      AutoSizeText(
                        'Habiba Tarek wants to join as pharmastict',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(Icons.check_circle, color: Colors.green, size: 35.0),
                      Icon(Icons.cancel, color: Colors.red, size: 35.0),
                    ]),
                SizedBox(height: 20.0),
              ],
            )),
      ])
    ]));
  }
}
