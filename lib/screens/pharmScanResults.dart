import 'package:flutter/material.dart';
import 'package:gradui/screens/adminReq.dart';
import 'package:gradui/screens/manageMedList.dart';
import 'package:gradui/screens/scanningpres.dart';
import 'package:gradui/screens/userScanRes.dart';

class PharmScanResultsPage extends StatefulWidget {
  @override
  _PharmScanResultsPageState createState() => _PharmScanResultsPageState();
}

class _PharmScanResultsPageState extends State<PharmScanResultsPage> {
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
                      builder: (context) => ScanningPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_outlined),
              title: Text('Manage Medicine List'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageMedListPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.request_page),
              title: Text('Admin Requests'),
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
              child: PharmDeepContainer(),
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
              builder: (context) => PharmScanResultsPage(),
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
              "Viewing Medical Prescriptions",
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
        ],
      ),
    );
  }
}

@override
class PharmDeepContainer extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 5.0, left: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade900))),
                  child: Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Add New ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _showToast('Clicked on IconButton'),
                          icon: Icon(
                            Icons.add_circle,
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Medicine Name',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Panadol',
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                buttonMinWidth: 200,
                                buttonHeight: 30,
                                buttonAlignedDropdown: true,
                                layoutBehavior: ButtonBarLayoutBehavior.padded,
                                buttonPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () =>
                                        _showToast('Clicked on RaisedButton'),
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          // width: 20,
                        )
                      ],
                    ),
                    _SpaceLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Medicine Name',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Aspocid Notfound',
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                buttonMinWidth: 200,
                                buttonHeight: 30,
                                buttonAlignedDropdown: true,
                                layoutBehavior: ButtonBarLayoutBehavior.padded,
                                buttonPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () =>
                                        _showToast('Clicked on RaisedButton'),
                                    child: Text(
                                      'Train',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          // width: 20,
                        )
                      ],
                    ),
                    _SpaceLine(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Enter Medicine Name',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Medicine Name',
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                buttonMinWidth: 200,
                                buttonHeight: 30,
                                buttonAlignedDropdown: true,
                                layoutBehavior: ButtonBarLayoutBehavior.padded,
                                buttonPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () =>
                                        _showToast('Clicked on RaisedButton'),
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          // width: 20,
                        )
                      ],
                    ),
                    _SpaceLine(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          buttonMinWidth: 300,
                          buttonHeight: 30,
                          buttonAlignedDropdown: true,
                          layoutBehavior: ButtonBarLayoutBehavior.padded,
                          buttonPadding: EdgeInsets.symmetric(vertical: 10),
                          children: <Widget>[
                            RaisedButton(
                              onPressed: () =>
                                  _showToast('Clicked on RaisedButton'),
                              child: Text(
                                'Save Perscription ',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      width: 20,
                    )
                  ])),
            ],
          ),
        ]));
  }

  void _showToast(String text) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(text),
      duration: Duration(seconds: 1),
    ));
  }
}

class _SpaceLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      child: Container(
        color: Colors.grey,
      ),
    );
  }
}
