import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              "https://pbs.twimg.com/media/EiuUx_SVgAInK60.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 15,
            right: 25,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 30,
            child: Container(
              height: 100,
              width: 300,
              color: Colors.transparent,
              // padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "#SerigalaTerakhir2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Tayang Setiap Rabu di Vidio",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Aa Promoted by Vidio",
                    style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.grey[600],
              height: 0.5,
              width: 1000,
            ),
          )
        ],
      ),
    );
  }
}
