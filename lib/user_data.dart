import 'package:flutter/material.dart';
import 'package:testing2/models/models.dart';

const TWEETS_DATA = [
  Tweet(
    id: 't1',
    name: 'UGM_FEES',
    username: '@UGM_FEES',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1571842210550906882/-b13KJzd_400x400.jpg',
    tweet:
        'ugm_fees mas operator lighting gelex keren bgt, dan punya pawang belum',
    time: '·48s',
    isAutomated: false,
    replies: 0,
    retweets: 0,
    likes: 0,
  ),
  Tweet(
    id: 't2',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.red,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet:
        'its/ btw penyetan ayam+tahu+tempe cuma 10k murah ga si? Atau klen nemu yang lebih murah?',
    time: '·1m',
    isAutomated: true,
    replies: 0,
    retweets: 0,
    likes: 0,
  ),
  Tweet(
    id: 't3',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.brown,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet: 'Temenku maba/ jadian ama kestarinya 😭',
    time: '·3h',
    isAutomated: true,
    replies: 61,
    retweets: 46,
    likes: 74,
  ),
  Tweet(
    id: 't4',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.purple,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet: 'Di its/ nggak boleh ya manggil kating pakai "kakak ???',
    time: '·5h',
    isAutomated: true,
    replies: 54,
    retweets: 34,
    likes: 14,
  ),
  Tweet(
    id: 't6',
    name: 'UGM_FEES',
    username: '@UGM_FEES',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.orange,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1571842210550906882/-b13KJzd_400x400.jpg',
    tweet:
        'ugm_fees titipan\nthanks gelex ugm, jadi tau ternyata pacarku di ugm mendua sama cowo lain.',
    time: '·5h',
    isAutomated: false,
    replies: 81,
    retweets: 20,
    likes: 99,
  ),
  Tweet(
    id: 't1',
    name: 'UGM_FEES',
    username: '@UGM_FEES',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1571842210550906882/-b13KJzd_400x400.jpg',
    tweet:
        'ugm_fees mas operator lighting gelex keren bgt, dan punya pawang belum',
    time: '·48s',
    isAutomated: false,
    replies: 0,
    retweets: 0,
    likes: 0,
  ),
  Tweet(
    id: 't2',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.red,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet:
        'its/ btw penyetan ayam+tahu+tempe cuma 10k murah ga si? Atau klen nemu yang lebih murah?',
    time: '·1m',
    isAutomated: true,
    replies: 0,
    retweets: 0,
    likes: 0,
  ),
  Tweet(
    id: 't3',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.brown,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet: 'Temenku maba/ jadian ama kestarinya 😭',
    time: '·3h',
    isAutomated: true,
    replies: 61,
    retweets: 46,
    likes: 74,
  ),
  Tweet(
    id: 't4',
    name: 'ITS_Fees | lg boleh OOT 👍🏻 NO KIRIM LINK 🚫',
    username: '@ITS_Fees',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.purple,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1582618552124600321/Nt07HS38_400x400.jpg',
    tweet: 'Di its/ nggak boleh ya manggil kating pakai "kakak ???',
    time: '·5h',
    isAutomated: true,
    replies: 54,
    retweets: 34,
    likes: 14,
  ),
  Tweet(
    id: 't6',
    name: 'UGM_FEES',
    username: '@UGM_FEES',
    profilePicture: CircleAvatar(
      backgroundColor: Colors.orange,
      radius: 30,
    ),
    imageUrl:
        'https://pbs.twimg.com/profile_images/1571842210550906882/-b13KJzd_400x400.jpg',
    tweet:
        'ugm_fees titipan\nthanks gelex ugm, jadi tau ternyata pacarku di ugm mendua sama cowo lain.',
    time: '·5h',
    isAutomated: false,
    replies: 81,
    retweets: 20,
    likes: 99,
  ),
];
