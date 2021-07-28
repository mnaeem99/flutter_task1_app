import 'package:flutter/material.dart';
import 'package:flutter_task1_app/hotel_details.dart';

List title = ["Grand Hyatt", "The Oberoi", "Dubai"];
List price = [300, 200, 500];

List deal = [6, 3, 8];

List image = [
  "images/grandHayyat.jpg",
  "images/theOberoi.jpg",
  "images/dubai.jpg",
];

class BestOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HotelDetails()));
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height * 0.16,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Card(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              image[index],
                              fit: BoxFit.cover,
                              width: 120,
                              height: 150,
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
                                child: Text(
                                  'Only ' + price[index].toString(),
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
