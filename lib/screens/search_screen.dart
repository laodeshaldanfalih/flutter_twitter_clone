import 'package:flutter/material.dart';
import 'package:testing2/widgets/widgets.dart';
import 'package:testing2/models/models.dart';

class SearchScreen extends StatelessWidget {
  final List<Trending> availableTranding;
  final List<WhatsHappening> availableWH;
  SearchScreen(this.availableTranding, this.availableWH, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 28, 38),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.grey[600],
            height: 0.5,
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
        title: Container(
          width: 295,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ImageIcon(
                AssetImage('assets/images/Search.png'),
                size: 18,
                color: Colors.grey,
              ),
              Text(
                'Search Twitter',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                    fontSize: 18),
              ),
            ],
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
      body: ListView(
        children: [
          News(),
          Container(
            margin: const EdgeInsets.only(top: 15),
            color: const Color(0xff192734),
            // height: 4,
            width: 100,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        child: Text(
                          "Trends for you",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 327,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => TrendingWidget(
                      header: availableTranding[index].header,
                      title: availableTranding[index].title,
                      tweets: availableTranding[index].tweets,
                    ),
                    itemCount: availableTranding.length,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        child: Text(
                          "Show more",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // ==================== // ================== //
          Container(
            margin: const EdgeInsets.only(top: 15),
            color: const Color(0xff192734),
            // height: 4,
            width: 100,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        child: Text(
                          "What's happening",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 440,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => WhatsHappenigWidget(
                      platform: availableWH[index].platform,
                      newsTitle: availableWH[index].newsTitle,
                      uploadTime: availableWH[index].uploadTime,
                      imageUrlWH: availableWH[index].imageUrlWH,
                    ),
                    itemCount: availableWH.length,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        child: Text(
                          "Show more",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        color: Colors.grey[600],
                        height: 0.5,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
