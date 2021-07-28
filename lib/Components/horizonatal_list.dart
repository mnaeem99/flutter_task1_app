import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final List title;
  final List image;
  HorizontalList({this.title, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: title.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(image[index]),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title[index],
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              backgroundColor: Colors.black38,
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
