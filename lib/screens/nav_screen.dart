import 'package:flutter/material.dart';
import 'package:testing2/models/models.dart';
import 'package:testing2/screens/screens.dart';
import 'package:testing2/tranding_data.dart';
import 'package:testing2/user_data.dart';
import 'package:testing2/whatshappening_data.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

List<Tweet> _availableTweets = TWEETS_DATA;
List<Trending> _availableTrending = TRENDING_DATA;
List<WhatsHappening> _availableWH = WHATS_HAPPENING;

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;
  bool _floatingButtonChanger = false;

  final List<Widget> _screens = [
    HomeScreen(_availableTweets),
    SearchScreen(_availableTrending, _availableWH),
    NotificationScreen(), HomeScreen(_availableTweets),
    //   ExploreScreen(),
    //   NotificationScreen(),
    //   MessageScreen(),
  ];
  final List<Text> _texts = const [
    Text('Home'),
    Text('Promo'),
    Text('Orders'),
    Text('Chat'),
  ];

  TabBar get _tabBar => TabBar(
        labelColor: const Color(0xff1d9bf0), //<-- selected text color
        unselectedLabelColor:
            const Color(0xff71767b), //<-- Unselected text color
        indicator: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.transparent),
          ),
        ),

        onTap: (index) {
          setState(() {
            _currentIndex = index;
            if (_currentIndex == 3) {
              _floatingButtonChanger = true;
            } else {
              _floatingButtonChanger = false;
            }
          });
        },

        tabs: const [
          Tab(
            icon: ImageIcon(
              AssetImage('assets/images/Menu Icons.png'),
              size: 30,
            ),
          ),
          Tab(
            icon: ImageIcon(
              AssetImage('assets/images/Search.png'),
              size: 40,
            ),
          ),
          Tab(
            icon: ImageIcon(
              AssetImage('assets/images/Notification.png'),
              size: 30,
            ),
          ),
          Tab(
            icon: ImageIcon(
              AssetImage('assets/images/Message.png'),
              size: 30,
            ),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: ImageIcon(
            AssetImage(_floatingButtonChanger
                ? 'assets/images/twitter-newmessage.png'
                : 'assets/images/twitter-newtweet.png'),
            size: 30,
          ),
        ),
        body: TabBarView(
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Container(
            height: 90,
            color: const Color(0xff192734),
            child: Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: _tabBar,
            ),
          ),
        ),
      ),
    );
  }
}
