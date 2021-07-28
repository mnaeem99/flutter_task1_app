import 'package:flutter/material.dart';

const Color background1 = Colors.blueAccent;
const Color text1 = Colors.white;

const Color background2 = Colors.black12;
const Color text2 = Colors.black;

class BookFlights extends StatefulWidget {
  @override
  _BookFlightsState createState() => _BookFlightsState();
}

class _BookFlightsState extends State<BookFlights> {
  Color singleBackground = background1;
  Color singleText = text1;

  Color familyBackground = background2;
  Color familyText = text2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Book Flights',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: FlatButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: FlatButton(
                          height: 40.0,
                          onPressed: () {
                            setState(() {
                              singleBackground = background1;
                              singleText = text1;

                              familyBackground = background2;
                              familyText = text2;
                            });
                          },
                          child: Text(
                            'One Way',
                            style: TextStyle(color: singleText, fontSize: 18.0),
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: singleBackground,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: FlatButton(
                          height: 40.0,
                          onPressed: () {
                            setState(() {
                              singleBackground = background2;
                              singleText = text2;

                              familyBackground = background1;
                              familyText = text1;
                            });
                          },
                          child: Text(
                            'Return',
                            style: TextStyle(color: familyText, fontSize: 18.0),
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: familyBackground,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'From',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'To',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Fly Out',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Fly Back',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Passengers',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: FlatButton(
                          height: 40.0,
                          onPressed: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookRoom()));*/
                          },
                          child: Text(
                            'Check Out',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                          color: Colors.blue[900],
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
