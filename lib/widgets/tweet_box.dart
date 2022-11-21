import 'package:flutter/material.dart';
import 'package:testing2/widgets/widgets.dart';

class TweetBox extends StatelessWidget {
  final String id;
  final String name;
  final String userName;
  final Widget profilePicture;
  final String tweet;
  final String time;
  final bool isAutomated;
  final String imageUrl;
  final int replies;
  final int retweets;
  final int likes;
  const TweetBox({
    Key? key,
    required this.id,
    required this.name,
    required this.userName,
    required this.profilePicture,
    required this.tweet,
    required this.time,
    required this.isAutomated,
    required this.imageUrl,
    required this.replies,
    required this.retweets,
    required this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 14, top: 10, right: 14, bottom: 8),
          color: Colors.transparent,
          width: 395,
          // height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilePicture(imageUrl: imageUrl),
              const SizedBox(width: 5),
              Container(
                // color: Colors.grey,
                width: 320,
                // height: 80,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.black12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.pink,
                              child: Row(
                                children: [
                                  Flexible(
                                      child: RichText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text: name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: userName,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                                  Text(
                                    time,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.more_horiz,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 3),
                    // AutomatedWidget(),
                    isAutomated
                        ? Column(
                            children: [
                              AutomatedWidget(),
                              const SizedBox(height: 3),
                            ],
                          )
                        : Container(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        tweet,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Indicator(
          replies: replies,
          retweets: retweets,
          likes: likes,
        ),
        const Divider(
          color: Colors.grey,
          height: 0.1,
        )
      ],
    );
  }
}
