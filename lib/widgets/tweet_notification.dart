import 'package:testing2/widgets/widgets.dart';
export 'package:flutter/material.dart';

class TweetNotification extends StatelessWidget {
  const TweetNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/love_notification.png',
              height: 30,
            ),
            Container(
              height: 50,
              width: 50,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: Image.network(
                'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
              ),
            ),
            const Icon(
              Icons.more_horiz,
              color: Colors.blueGrey,
            ),
          ],
        )
      ],
    );
  }
}
