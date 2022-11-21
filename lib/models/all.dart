import 'package:flutter/material.dart';

class All {
  final IconData icon;
  final String imageUrl;
  final String name;
  final String userName;
  final String mainNotif;
  final String category;
  final String gotLike;

  const All({
    required this.icon,
    required this.imageUrl,
    required this.name,
    required this.userName,
    required this.mainNotif,
    required this.category,
    this.gotLike = 'Liked tour Tweet',
  });
}
