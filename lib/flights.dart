import 'package:flutter/material.dart';
import 'Components/popular_destination.dart';
import 'Components/popular_offer.dart';
import 'Components/top_cities.dart';
import 'Components/search_field.dart';

class Flights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ListTile(
                  title: Text(
                    'Flights',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                SearchField(
                  inputBorder: inputBorder,
                  hint: 'Where to go?',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Popular Destination',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Show All',
                          style: TextStyle(
                              color: Colors.blue[900], fontSize: 14.0),
                        ),
                      ),
                    ),
                  ],
                ),
                PopularDestination(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Popular Offer',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Show All',
                          style: TextStyle(
                              color: Colors.blue[900], fontSize: 14.0),
                        ),
                      ),
                    ),
                  ],
                ),
                PopularOffer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Top Cities',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Hot',
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Colors.blue[900],
                      ),
                    ),
                  ],
                ),
                TopCities(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
