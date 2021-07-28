import 'package:flutter/material.dart';
import 'package:flutter_task1_app/place_details.dart';

List deal = [6, 3, 8];

List image = [
  "images/singapore.jpg",
  "images/lasVegas.jpg",
  "images/dubai.jpg",
];

class CountriesCard extends StatelessWidget {
  const CountriesCard({
    Key key,
    @required this.value,
  }) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PlaceDetails()));
      },
      child: Card(
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'images/singapore.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Singapore',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < value ? Icons.star : Icons.star_border,
                        color: Colors.greenAccent,
                      );
                    }),
                  ),
                  SizedBox(width: 30),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(4, (index) {
                      return Align(
                        widthFactor: 0.3,
                        child: ClipOval(
                          child: Image.asset(
                            'images/profile.png',
                            fit: BoxFit.cover,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
