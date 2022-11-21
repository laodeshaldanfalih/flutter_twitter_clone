import 'package:flutter/material.dart';
import 'package:testing2/widgets/widgets.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 28, 38),
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Column(
              children: [
                const TabBar(
                  labelColor: Color(0xff4C9EEB),
                  unselectedLabelColor: Color.fromRGBO(158, 158, 158, 1),
                  tabs: <Tab>[
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Mentions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey[600],
                  height: 0.5,
                ),
              ],
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
          title: const Text(
            'Notifications',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.settings_outlined,
                color: Color(0xff4C9EEB),
                size: 30,
              ),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            AllNotificationWidget(),
            Center(
              child: Text('b'),
            )
          ],
        ),
      ),
    );
  }
}
