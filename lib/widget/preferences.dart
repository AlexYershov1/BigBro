import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Preferences extends StatelessWidget {
  String gender, language, religion;
  final double size = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          DropdownButton<String>(
            value: gender,
            icon: const Icon(Icons.air_rounded),
            items:<String>['Male', 'Female', 'No preference'].map<DropdownMenuItem <String>>((String value)
              {
                return DropdownMenuItem <String>(
                  value: value,
                  child: Text(value),
                  );
              }).toList(),
            itemHeight: size,
          ),

          DropdownButton<String>(
            value: language,
            icon: const Icon(Icons.air_rounded),
            items:<String>['English', 'Hebrew', 'Arabic', 'No preference'].map<DropdownMenuItem <String>>((String value)
            {
              return DropdownMenuItem <String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            itemHeight: size,
          ),

          DropdownButton<String>(
            value: religion,
            icon: const Icon(Icons.air_rounded),
            items:<String>['Jewish', 'Muslim', 'Christian', 'Druze', 'No preference'].map<DropdownMenuItem <String>>((String value)
            {
              return DropdownMenuItem <String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            itemHeight: size,
          ),
        ],
      )
    );
  }
}
