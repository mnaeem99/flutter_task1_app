import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class Blogs extends StatelessWidget {
  const Blogs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
              'images/pagoda.jpg',
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pagoda',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Indonesia',
                style: TextStyle(fontSize: 12.0, color: Colors.blue),
              ),
              Container(
                width: 150,
                height: 100,
                child: Text(
                  'A pagoda is tiered tower with multiple eavers, built in traditions as stups in historic south asia.',
                  style: TextStyle(fontSize: 12.0, color: Colors.black),
                ),
              ),
            ],
          ),
          Expanded(
            child: FavoriteButton(
              isFavorite: true,
              valueChanged: (_isFavorite) {
                if (_isFavorite == true) {
                  print('Liked');
                } else {
                  print('Disliked');
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}