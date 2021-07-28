import 'package:flutter/material.dart';
import 'Components/best_offer.dart';
import 'Components/near_hotel.dart';
import 'Components/top_cities.dart';
import 'Components/search_field.dart';

class Hotels extends StatelessWidget {
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
                    'Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
                SearchField(
                  inputBorder: inputBorder,
                  hint: 'Where to ?',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Near You',
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
                NearYou(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Best Offer',
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
                BestOffer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'World Top Hotels',
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
