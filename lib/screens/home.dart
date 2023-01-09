import 'dart:ui';

import 'package:app_design/widgets/category_text.dart';
import 'package:app_design/widgets/nav_icons_icons.dart';
import 'package:app_design/widgets/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final String ass = 'assets/eicon2.svg';
  final String seting = 'assets/setting1.svg';

  // list for post items
  List post_item = [
    [
      'Bilal',
      'BitCoinMan',
      '100',
      'assets/user.png',
      '4',
      '1k',
      'assets/pinkpantherpic.png',
      '20',
      '4',
    ],
    [
      'Mike',
      'Cool Monkey',
      '130',
      'assets/user2.png',
      '1',
      '3k',
      'assets/monkeypic.png',
      '30',
      '4'
    ],
    [
      'John',
      'BugsBunny',
      '80',
      'assets/car.png',
      '1',
      '2k',
      'assets/bunnypic.png',
      '10',
      '2'
    ],
    [
      'Umar',
      'Head',
      '100',
      'assets/lamp.png',
      '2',
      '1k',
      'assets/statuepic.png',
      '20',
      '2'
    ],
    [
      'Hamza',
      'Space Monkey',
      '140',
      'assets/user5.png',
      '2',
      '2k',
      'assets/spacemonkeypic.png',
      '30',
      '1'
    ],
    [
      'Elisa',
      'Wolf',
      '100',
      'assets/user6.png',
      '2',
      '1k',
      'assets/wolfpic.png',
      '20',
      '2'
    ]
  ];
  // category select list
  final List categoryType = [
    ['Recent', true],
    ['Popular', false],
    ['Top', false],
    ['Trending', false],
    ['Art', false],
    ['NFT`s', false],
    ['News', false],
    ['Game', false],
  ];
// category select function
  void typeSelected(int index) {
    setState(() {
      for (int i = 0; i < categoryType.length; i++) {
        categoryType[i][1] = false;
      }
      categoryType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.grey.withOpacity(0.5),
                      Colors.grey.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GNav(
                      backgroundColor: Colors.transparent,
                      curve: Curves.easeInOutExpo, // tab animation curves
                      duration:
                          Duration(milliseconds: 400), // tab animation duration
                      gap: 8, // the tab button gap between icon and text
                      color: Colors.grey[800], // unselected icon color
                      activeColor: Colors.white, // selected icon and text color
                      iconSize: 25, // tab button icon size
                      tabBackgroundColor:
                          Color(0xff302f36), // selected tab background color
                      padding: EdgeInsets.only(
                          bottom: 20,
                          top: 20,
                          left: 20,
                          right: 20), // navigation bar padding
                      tabs: [
                        GButton(
                          icon: Nav_icons.home,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.explore_outlined,
                          text: 'Explore',
                        ),
                        GButton(
                          icon: Nav_icons.bookmark,
                          text: 'favorite',
                        ),
                        GButton(
                          icon: Nav_icons.statistics__1_,
                          text: 'Statistics',
                        )
                      ]),
                ),
              ),
            )),
        backgroundColor: Color(0xff16171d),
        body: SafeArea(
          child: Stack(children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 7, right: 7, bottom: 10),
                  child: Column(
                    children: [
                      appBar(),
                      SizedBox(
                        height: 15,
                      ),
                      searchBar(),
                      SizedBox(
                        height: 15,
                      ),
                      navbar(),
                      ...post_generate(),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ));
  }

  List<Widget> post_generate() {
    return List.generate(
      6,
      (index) => Post(
        creator: post_item[index][0],
        name: post_item[index][1],
        price: post_item[index][2],
        creatorimage: post_item[index][3],
        day: post_item[index][4],
        follower: post_item[index][5],
        image: post_item[index][6],
        minutes: post_item[index][7],
        hours: post_item[index][8],
      ),
    );
  }

// [
//       'Bilal',
//       'BitCoinMan',
//       '100',
//       '1',
//       '2',
//       '1k',
//       'assets/pinkpantherpic.png',
//       '20',
//       '2'
//     ],
  Row appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 180,
          child: Expanded(
              child: Text(
            "Discover the new NFT collection",
            style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
          )),
        ),
        Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
              color: Color(0xff25262e),
              borderRadius: BorderRadius.circular(28)),
          child: Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    ass,
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                '57.89',
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold, color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }

  Row searchBar() {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            cursorColor: Color(0xff6d6e75),
            style: GoogleFonts.openSans(
                color: Colors.white, fontWeight: FontWeight.w400),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff212025), width: 1),
                  borderRadius: BorderRadius.circular(28)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff212025), width: 1),
                  borderRadius: BorderRadius.circular(28)),
              labelText: 'Search items, collections...',
              labelStyle: GoogleFonts.openSans(color: Color(0xff6d6e75)),
              prefixIcon: Align(
                widthFactor: 0,
                heightFactor: 0,
                child: Icon(
                  Icons.search_outlined,
                  color: Color(0xff6d6e75),
                ),
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 26,
          backgroundColor: Color(0xff212025),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xff16171d),
            child: SvgPicture.asset(
              seting,
              height: 25,
              color: Color(0xff6d6e75),
            ),
          ),
        )
      ],
    );
  }

  Container navbar() {
    return Container(
        height: 40,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryType.length,
            itemBuilder: (context, index) {
              return textCategory(
                  categorytype: categoryType[index][0],
                  isSelected: categoryType[index][1],
                  onTap: () {
                    typeSelected(index);
                  });
            }));
  }
}

final iconhome = Image.asset(
  "assets/home.png",
  height: 20,
);
