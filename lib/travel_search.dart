import 'package:flutter/material.dart';
import 'package:flutter_task1_app/nav.dart';
import 'Components/top_cities.dart';
import 'Components/countries_card.dart';
import 'Components/blogs.dart';
import 'Components/search_field.dart';

class TravelSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var inputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    );
    final int value = 3;
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
                    'Enjoy your life with us!',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  trailing: FlatButton(
                    child: Icon(
                      Icons.close,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Nav()));
                    },
                  ),
                ),
                SearchField(inputBorder: inputBorder, hint: 'Search Your Favorite place', ),
                CountriesCard(value: value),
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Blogs',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Blogs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
