import 'package:flutter/material.dart';
import 'package:testing2/models/models.dart';
import 'package:testing2/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final List<Tweet> availableTweets;
  static const routeName = '/home-screen';
  HomeScreen(this.availableTweets);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[600],
            height: 1,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff192734),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 7),
          child: ImageIcon(
            AssetImage('assets/images/Twitter Logo.png'),
            color: Color(0xff4C9EEB),
            size: 40,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ImageIcon(
              AssetImage('assets/images/timeline_option.png'),
              color: Color(0xff4C9EEB),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xff192734),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => TweetBox(
            id: availableTweets[index].id,
            name: availableTweets[index].name,
            userName: availableTweets[index].username,
            profilePicture: availableTweets[index].profilePicture,
            tweet: availableTweets[index].tweet,
            time: availableTweets[index].time,
            isAutomated: availableTweets[index].isAutomated,
            imageUrl: availableTweets[index].imageUrl,
            replies: availableTweets[index].replies,
            retweets: availableTweets[index].retweets,
            likes: availableTweets[index].likes,
          ),
          itemCount: availableTweets.length,
        ),
      ),
    );
  }
}
