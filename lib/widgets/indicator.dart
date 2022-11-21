import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int replies;
  final int retweets;
  final int likes;
  const Indicator({
    Key? key,
    required this.replies,
    required this.retweets,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 65, bottom: 8, right: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/reply.png',
                color: Colors.grey,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                child: Text(
                  '$replies',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/retweet.png',
                color: Colors.grey,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                child: Text(
                  '$retweets',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/like.png',
                color: Colors.grey,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                child: Text(
                  '$likes',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/share.png',
            color: Colors.grey,
            height: 20,
          ),
        ],
      ),
    );
  }
}
