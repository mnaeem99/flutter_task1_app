import 'package:flutter/material.dart';
import 'package:flutter_task1_app/flight_details.dart';

List title = ["Singapore", "Las Vegas", "Dubai"];
List desc = [
  "Fly now to japan for as low as 300, if you back now",
  "Fly now to japan for as low as 300, if you back now",
  "Fly now to japan for as low as 300, if you back now",
];
List deal = [6, 3, 8];

List image = [
  "images/singapore.jpg",
  "images/lasVegas.jpg",
  "images/dubai.jpg",
];

class PopularOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FlightDetails()));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * 0.2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Card(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              image[index],
                              fit: BoxFit.cover,
                              width: 110,
                              height: 120,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Container(
                                width: 200,
                                child: Text(
                                  desc[index],
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ),
                              Text(
                                deal[index].toString() + ' Deals left',
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.red),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
