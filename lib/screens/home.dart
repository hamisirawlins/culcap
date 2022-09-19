import 'package:culcap/tabs/home_tab.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const Center(
      child: HomeTab(),
    ),
    const Center(
      child: Text('Search'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  //Navbar Setup
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
        extendBodyBehindAppBar: true,
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: size.height * 0.065,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomNavIcon(
                    icon: Icons.home_rounded,
                    selected: _selectedIndex == 0,
                    pressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  BottomNavIcon(
                    icon: Icons.search,
                    selected: _selectedIndex == 1,
                    pressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  BottomNavIcon(
                    icon: Icons.person,
                    selected: _selectedIndex == 2,
                    pressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

//Icons
class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    Key? key,
    required this.icon,
    this.pressed,
    required this.selected,
  }) : super(key: key);

  final VoidCallback? pressed;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: pressed,
          icon: Icon(
            icon,
            color: selected ? Colors.orangeAccent : Colors.amber[400],
          ),
        ),
      ],
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
