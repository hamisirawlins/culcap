import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../constants.dart';
import '../widgets/image_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const Center(
      child: Text('Home'),
    ),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];
  final List _posts = [
    {
      "id": 1,
      "image": "http://dummyimage.com/1670x1295.png/5fa2dd/ffffff",
      "creator": "Barbette Kilgrew",
      "email": "bkilgrew0@wordpress.org",
      "likes": 3598,
      "subtitle": "Fintone"
    },
    {
      "id": 2,
      "image": "http://dummyimage.com/2038x1574.png/dddddd/000000",
      "creator": "Meggi Bachmann",
      "email": "mbachmann1@bloglines.com",
      "likes": 8064,
      "subtitle": "Cardify"
    },
    {
      "id": 3,
      "image": "http://dummyimage.com/1705x1371.png/cc0000/ffffff",
      "creator": "Law Patry",
      "email": "lpatry2@ibm.com",
      "likes": 3348,
      "subtitle": "Tresom"
    },
    {
      "id": 4,
      "image": "http://dummyimage.com/1330x1317.png/5fa2dd/ffffff",
      "creator": "Hamish Glasscoo",
      "email": "hglasscoo3@devhub.com",
      "likes": 2275,
      "subtitle": "Tresom"
    },
    {
      "id": 5,
      "image": "http://dummyimage.com/1610x1314.png/ff4444/ffffff",
      "creator": "Patrice Marns",
      "email": "pmarns4@discuz.net",
      "likes": 741,
      "subtitle": "Voyatouch"
    },
    {
      "id": 6,
      "image": "http://dummyimage.com/2889x2109.png/ff4444/ffffff",
      "creator": "Donovan Lidyard",
      "email": "dlidyard5@cbsnews.com",
      "likes": 5804,
      "subtitle": "Home Ing"
    },
    {
      "id": 7,
      "image": "http://dummyimage.com/2353x1492.png/dddddd/000000",
      "creator": "Lalo Orman",
      "email": "lorman6@e-recht24.de",
      "likes": 673,
      "subtitle": "Sonair"
    },
    {
      "id": 8,
      "image": "http://dummyimage.com/1751x1082.png/5fa2dd/ffffff",
      "creator": "Sheila-kathryn Cattrell",
      "email": "scattrell7@china.com.cn",
      "likes": 8540,
      "subtitle": "Transcof"
    },
    {
      "id": 9,
      "image": "http://dummyimage.com/3420x2024.png/cc0000/ffffff",
      "creator": "Byrle Selcraig",
      "email": "bselcraig8@china.com.cn",
      "likes": 7097,
      "subtitle": "Stim"
    },
    {
      "id": 10,
      "image": "http://dummyimage.com/1242x1740.png/dddddd/000000",
      "creator": "Xenia Skunes",
      "email": "xskunes9@imageshack.us",
      "likes": 8397,
      "subtitle": "Cookley"
    },
    {
      "id": 11,
      "image": "http://dummyimage.com/1962x1859.png/5fa2dd/ffffff",
      "creator": "Beale McBeith",
      "email": "bmcbeitha@51.la",
      "likes": 1137,
      "subtitle": "Home Ing"
    },
    {
      "id": 12,
      "image": "http://dummyimage.com/1330x2069.png/dddddd/000000",
      "creator": "Sawyer Abdon",
      "email": "sabdonb@moonfruit.com",
      "likes": 2262,
      "subtitle": "Konklab"
    },
    {
      "id": 13,
      "image": "http://dummyimage.com/2587x1115.png/5fa2dd/ffffff",
      "creator": "Norina Moulsdall",
      "email": "nmoulsdallc@blogspot.com",
      "likes": 2299,
      "subtitle": "Quo Lux"
    },
    {
      "id": 14,
      "image": "http://dummyimage.com/2300x2113.png/dddddd/000000",
      "creator": "Cammy Kitcher",
      "email": "ckitcherd@smugmug.com",
      "likes": 4152,
      "subtitle": "Otcom"
    },
    {
      "id": 15,
      "image": "http://dummyimage.com/1605x1323.png/ff4444/ffffff",
      "creator": "Kally Morphew",
      "email": "kmorphewe@uiuc.edu",
      "likes": 5740,
      "subtitle": "Zaam-Dox"
    },
    {
      "id": 16,
      "image": "http://dummyimage.com/3789x1273.png/dddddd/000000",
      "creator": "Honey Gosker",
      "email": "hgoskerf@sfgate.com",
      "likes": 6480,
      "subtitle": "Asoka"
    },
    {
      "id": 17,
      "image": "http://dummyimage.com/2368x1928.png/cc0000/ffffff",
      "creator": "Rozalin Goskar",
      "email": "rgoskarg@springer.com",
      "likes": 6433,
      "subtitle": "Zontrax"
    }
  ];

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(60))),
        height: size.height * 0.095,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: GNav(
              backgroundColor: Colors.transparent,
              tabBackgroundColor: Colors.grey,
              color: Colors.white,
              activeColor: Colors.white,
              gap: 4,
              onTabChange: _navigateBottomBar,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(icon: Icons.search, text: 'Search'),
                GButton(icon: Icons.supervised_user_circle, text: 'Profile')
              ]),
        ),
      ),
    );
  }
}

// child: Column(children: [
//                   Text('Home Page, Signed In as ' + user.email!),
//                   MaterialButton(
//                     onPressed: () {
//                       FirebaseAuth.instance.signOut();
//                     },
//                     color: Colors.red,
//                     child: Text('Sign Out'),
//                   ),
//                 ]),
