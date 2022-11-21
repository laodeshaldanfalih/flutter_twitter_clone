import 'package:flutter/material.dart';

class Tweet {
  final String id;
  final String name;
  final String username;
  final Widget profilePicture;
  final String tweet;
  final String time;
  final bool isAutomated;
  final String imageUrl;
  final int replies;
  final int retweets;
  final int likes;

  const Tweet({
    required this.id,
    required this.name,
    required this.username,
    required this.profilePicture,
    required this.tweet,
    required this.time,
    this.isAutomated = false,
    required this.imageUrl,
    required this.replies,
    required this.retweets,
    required this.likes,
  });
}
