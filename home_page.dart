import 'package:flutter/material.dart';
import 'package:tarea3/item_trip.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> _listElements = [
    {
      "day": "Day 1",
      "description": "Bali Rice Fields",
      "image": "assets/bali_rice.jpeg",
    },
    {
      "day": "Day 2",
      "description": "Bali mountains",
      "image": "assets/bali_mountains.jpg",
    },
    {
      "day": "Day 3",
      "description": "Bali beach",
      "image": "assets/bali_beach.jpg",
    },
    {
      "day": "Day 4",
      "description": "Bali city tour",
      "image": "assets/bali_city.jpg",
    },
    {
      "day": "Day 5",
      "description": "Bali architecture",
      "image": "assets/bali_architecture.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 200,
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.greenAccent[70],
              child: Column(children: [
                ListTile(
                  title: Text(
                    "Balis beach",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text("4.1"),
                    ],
                  ),
                  leading: Icon(
                    Icons.surfing,
                    color: Colors.indigo,
                    size: 48,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "  Duration",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Text("7 days", style: TextStyle(fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Text("Participants",
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        Text("10 people", style: TextStyle(fontSize: 15))
                      ],
                    ),
                    Column(
                      children: [
                        Text("Hotel stay",
                            style: TextStyle(fontWeight: FontWeight.w300)),
                        Text("5-star hotel", style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trip price",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text("\$1250/adult")
                  ],
                )
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Details"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
              Text("Walkthrough flight detail")
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _listElements.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemTrip(
                  tripsMap: _listElements[index],
                );
                //return Text("Pelicula: ${_listElements[index]["title"]}");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(60),
            child: SizedBox(
              width: 400,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(content: Text("Registro en progreso...")),
                    );
                },
                child: Text("Start booking"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
