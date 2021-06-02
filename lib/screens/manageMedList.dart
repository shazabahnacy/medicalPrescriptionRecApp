import 'package:flutter/material.dart';
import 'package:gradui/screens/adminReq.dart';
import 'package:gradui/screens/pharmScanResults.dart';
import 'package:gradui/screens/scanningpres.dart';
import 'package:gradui/screens/userScanRes.dart';

class ManageMedListPage extends StatefulWidget {
  @override
  _ManageMedListPageState createState() => _ManageMedListPageState();
}

class _ManageMedListPageState extends State<ManageMedListPage> {
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
              child: BottomContainer(),
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
              builder: (context) => ManageMedListPage(),
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
              "Medicine Lists",
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
class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(),
        body: ListView(children: [
          Column(
            children: <Widget>[
              DataTable(
                columns: [
                  DataColumn(
                    label: Text("ID"),
                  ),
                  DataColumn(
                    label: Text("Medicine Name"),
                  ),
                  DataColumn(
                    label: Text("Action"),
                  ),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(
                      Text("1"),
                    ),
                    DataCell(
                      Text("Panadol"),
                    ),
                    DataCell(
                      Wrap(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // Navigator.pushNamed(
                            //     context, '/Editmedicalrecord',
                            //     arguments: medicalinfo[index]);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_sharp),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // this is the line that is causing the issue, this one goes back to the previous screen
                            // Navigator.pop(context);
                          },
                        ),
                      ]),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text("2"),
                    ),
                    DataCell(
                      Text("Cataflam"),
                    ),
                    DataCell(
                      Wrap(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // Navigator.pushNamed(
                            //     context, '/Editmedicalrecord',
                            //     arguments: medicalinfo[index]);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_sharp),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // this is the line that is causing the issue, this one goes back to the previous screen
                            // Navigator.pop(context);
                          },
                        ),
                      ]),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text("3"),
                    ),
                    DataCell(
                      Text("Telefast"),
                    ),
                    DataCell(
                      Wrap(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // Navigator.pushNamed(
                            //     context, '/Editmedicalrecord',
                            //     arguments: medicalinfo[index]);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_sharp),
                          color: Colors.red,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // this is the line that is causing the issue, this one goes back to the previous screen
                            // Navigator.pop(context);
                          },
                        ),
                      ]),
                    ),
                  ]),
                  DataRow(cells: [
                    DataCell(
                      Text("4"),
                    ),
                    DataCell(
                      Text("Aspocid"),
                    ),
                    DataCell(
                      Wrap(children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.purple,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        ManageMedListPage())));
                            // Navigator.pushNamed(
                            //     context, '/Editmedicalrecord',
                            //     arguments: medicalinfo[index]);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete_sharp),
                          color: Colors.red,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) =>
                            //             ManageMedListPage())));

                            Navigator.pop(context);
                          },
                        ),
                      ]),
                    ),
                  ]),
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ]));
  }
}
