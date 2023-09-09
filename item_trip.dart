import 'package:flutter/material.dart';

class ItemTrip extends StatelessWidget {
  final Map<String, String> tripsMap;

  const ItemTrip({super.key, required this.tripsMap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 250,
      height: 100,
      color: Colors.blue,
      child: Stack(
        children: [
          Positioned.fill(child: _countryImage()),
          Positioned(
            bottom: 10,
            right: 0,
            left: 0,
            child: _tripDay(),
          ),
        ],
      ),
    );
  }

  Widget _tripDay() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(topRight: Radius.circular(15))),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text("${tripsMap["day"]}", style: TextStyle(color: Colors.white)),
        Text(
          "${tripsMap["description"]}",
          style: TextStyle(color: Colors.white),
        ),
      ]),
    );
  }

  Widget _countryImage() {
    return Image.asset("${tripsMap["image"]}", fit: BoxFit.fill);
  }
}
