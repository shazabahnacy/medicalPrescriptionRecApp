import 'package:flutter/material.dart';
import 'package:gradui/screens/pharmScanResults.dart';

class EditpharmScanResult extends StatefulWidget {
  @override
  _EditpharmScanResultState createState() => _EditpharmScanResultState();
}

class _EditpharmScanResultState extends State<EditpharmScanResult> {
  static String id = 'EditProduct';

  String medicineName;
  final _store = Store();
  final _formKey = GlobalKey<FormState>();
  String _typeSelected;
  List<MedicalInfo> medicalinfo = [];

  @override
  Widget build(BuildContext context) {
    MedicalInfo medicalinfo = ModalRoute.of(context).settings.arguments;
    final medicineName = TextEditingController(text: medicalinfo.bloodsugar);

    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.purple,
          ),
          centerTitle: true,
          title: Text(
            "Edit medicine name",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          elevation: 0.0,
        ),
        body: ListView(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "medicine name",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ]),
                        TextFormField(
                          initialValue: medicalinfo.bloodsugar,
                          validator: (value) {
                            if (value.isEmpty) {
                              return ('please enter the new medicine name');
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              medicalinfo.bloodsugar = val;
                            });
                          },
                          decoration: InputDecoration(
                              labelText: 'medicinename',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(height: 50.0),
                        Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.purpleAccent,
                              color: Colors.purple,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();

                                    print(medicineName);

                                    _store.editmedicalrec({
                                      'medicinename': medicalinfo.medicineName,
                                    }, medicalinfo.medinfoId);
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PharmScanResultsPage()));
                                },
                                child: Center(
                                  child: Text(
                                    'Edit medicine name',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Center(
                                child: Text('Cancel',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
          ])
        ]));
  }
}
