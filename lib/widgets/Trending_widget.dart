import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  final String header;
  final String title;
  final double tweets;
  const TrendingWidget({
    Key? key,
    required this.header,
    required this.title,
    required this.tweets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 70,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        header,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '$tweets Tweets',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              )),
          Container(
            color: Colors.grey[600],
            height: 0.5,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
