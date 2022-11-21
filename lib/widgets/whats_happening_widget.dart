import 'package:flutter/material.dart';

class WhatsHappenigWidget extends StatelessWidget {
  final String platform;
  final String newsTitle;
  final int uploadTime;
  final String imageUrlWH;
  const WhatsHappenigWidget({
    Key? key,
    required this.platform,
    required this.newsTitle,
    required this.uploadTime,
    required this.imageUrlWH,
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
            padding:
                const EdgeInsets.only(left: 25, top: 15, bottom: 15, right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            platform,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            uploadTime == 0
                                ? ' · LIVE'
                                : ' · $uploadTime minutes ago',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        newsTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: 80,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    imageUrlWH,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
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
