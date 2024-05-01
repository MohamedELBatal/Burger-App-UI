import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/chat.dart';
import 'package:food_app/pages/favorite_tab.dart';
import 'package:food_app/pages/home_tab.dart';
import 'package:food_app/pages/live_chat_tab.dart';
import 'package:food_app/pages/personal_tab.dart';

class Home extends StatefulWidget {
  static const String routeName ="Home";
   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  var bottomNavIndex = 0;
 int index = 0;

 final iconList = <IconData>[
   Icons.home_filled,
   Icons.person,
   Icons.chat,
   Icons.favorite,
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
              );
            },
          );
        },
        backgroundColor: const Color(0xFFEF2A39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        notchMargin: 13,
        backgroundColor: const Color(0xFFEF2A39),
        icons: iconList,
        activeIndex: bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        elevation: 0,
        activeColor: Colors.black,
        inactiveColor: Colors.white,
        blurEffect: true,
        onTap: (value) {
          index = value;
          bottomNavIndex = index ;
          setState(() {
            if(const LiveChatTab() == index){
              Navigator.pushNamed(context, Chat.routeName);
            }
          });
        },
        //other params
      ),
      body: tabs[index],
    );
  }
  List<Widget> tabs = [
     HomeTab(),
    const PersonalTab(),
    const LiveChatTab(),
    const FavoriteTab(),

  ];
}
