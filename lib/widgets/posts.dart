import 'dart:ui';

import 'package:app_design/widgets/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  final String ass = 'assets/eicon2.svg';
  String price;
  String creator;
  String image;
  String minutes;
  String hours;
  String day;
  String name;
  String creatorimage;
  String follower;
  Post({
    super.key,
    required this.creator,
    required this.name,
    required this.price,
    required this.image,
    required this.day,
    required this.follower,
    required this.creatorimage,
    required this.minutes,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => details(
                creator: creator,
                name: name,
                price: price,
                image: image,
                day: day,
                follower: follower,
                creatorimage: creatorimage,
                minutes: minutes,
                hours: hours),
          ));
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 5),
                color: Colors.grey.shade400,
                blurRadius: 16,
              ),
            ],
          ),
          width: double.infinity,
          height: 350,
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(creatorimage),
                      radius: 30,
                      backgroundColor: Color(0xff25262e),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      creator,
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 270,
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(child: Container(height: 30), flex: 1),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              height: 68,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.grey.shade200.withOpacity(0.6),
                                    Colors.grey.shade100.withOpacity(0.3),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Current price',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                height: 20,
                                                width: 15,
                                                child: SvgPicture.asset(ass)),
                                            Text(
                                              price + ' ETH',
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Ending in',
                                          style: GoogleFonts.openSans(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 10, sigmaY: 10),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    day + ' D',
                                                    style: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10),
                                                  ),
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.grey.shade200
                                                            .withOpacity(0.6),
                                                        Colors.grey.shade100
                                                            .withOpacity(0.3),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              ':',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(width: 4),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 10, sigmaY: 10),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    hours + ' H',
                                                    style: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10),
                                                  ),
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.grey.shade200
                                                            .withOpacity(0.6),
                                                        Colors.grey.shade100
                                                            .withOpacity(0.3),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              ':',
                                              style: GoogleFonts.openSans(
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(width: 4),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: BackdropFilter(
                                                filter: ImageFilter.blur(
                                                    sigmaX: 10, sigmaY: 10),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    minutes + ' M',
                                                    style: GoogleFonts.openSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10),
                                                  ),
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end:
                                                          Alignment.bottomRight,
                                                      colors: [
                                                        Colors.grey.shade200
                                                            .withOpacity(0.6),
                                                        Colors.grey.shade100
                                                            .withOpacity(0.3),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        flex: 4,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
