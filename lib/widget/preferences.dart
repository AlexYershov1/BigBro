import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Preferences extends StatefulWidget {
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  String gender, language, religion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(child: SizedBox()),
            Expanded(
              child: Column(
                children: [
                  Expanded(child: SizedBox(), flex: 2),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: SizedBox()),
                        Expanded(
                          flex: 4,
                          child: Text(
                            'Choose Your\nPreferences',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.blueAccent),
                              color: Colors.grey,
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              onChanged: (String value) {
                                setState(() {
                                  gender = value;
                                });
                              },
                              hint: Text(
                                '   Gender',
                                style: TextStyle(color: Colors.indigoAccent),
                              ),
                              dropdownColor: Colors.indigo,
                              value: gender,
                              icon: Icon(Icons.arrow_downward,
                                  color: Colors.white),
                              items: <String>[
                                'Male',
                                'Female',
                                'No preference'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              style: const TextStyle(color: Colors.deepPurple),
                              //elevation: 16,
                            ),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.blueAccent),
                              color: Colors.grey,
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: language,
                              icon: Icon(Icons.arrow_downward,
                                  color: Colors.white),
                              onChanged: (String value) {
                                setState(() {
                                  language = value;
                                });
                              },
                              hint: Text('   Language',
                                  style: TextStyle(color: Colors.indigoAccent)),
                              items: <String>[
                                'English',
                                'Hebrew',
                                'Arabic',
                                'No preference'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              border: Border.all(color: Colors.blueAccent),
                              color: Colors.grey,
                            ),
                            child: DropdownButton<String>(
                              hint: Text('   Religion',
                                  style: TextStyle(color: Colors.indigoAccent)),
                              onChanged: (String value) {
                                setState(() {
                                  religion = value;
                                });
                              },
                              isExpanded: true,
                              value: religion,
                              icon: Icon(Icons.arrow_downward,
                                  color: Colors.white),
                              items: <String>[
                                'Jewish',
                                'Muslim',
                                'Christian',
                                'Druze',
                                'No preference'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 2, child: SizedBox())
                ],
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
