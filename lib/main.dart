import 'package:flutter/material.dart';
import 'signup.dart';
import 'signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        //This is a backround which contain background image
        Positioned(
          bottom: 0,
          child: Image.network(
            'https://i.ibb.co/Y2CNM8V/new-york.jpg',
            height: height,
          ),
        ),
        //This is foreground which contain text and signin/signup button
        Foreground(),
      ],
    );
  }
}

class Foreground extends StatelessWidget {
  const Foreground({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Explore the world',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Travel with people. Make new friends.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: 22.0),
                          ),
                          color: Colors.white,
                          textColor: Colors.blue[900],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()));
                          },
                          child: Text(
                            'SIGN UP',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
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
          ],
        ),
      ),
    );
  }
}
