// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:instagram_profile/widgets/btn_profile.dart";
import "package:instagram_profile/widgets/display_picture.dart";
import "package:instagram_profile/widgets/follower_count.dart";
import "package:instagram_profile/widgets/grid_image.dart";
import "package:instagram_profile/widgets/story_circle.dart";
//import "package:font_awesome_flutter/font_awesome_flutter.dart";

class InstagramProfile extends StatefulWidget {
  const InstagramProfile({super.key});

  @override
  State<InstagramProfile> createState() => _InstagramProfileState();
}

class _InstagramProfileState extends State<InstagramProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sunny.khan1991"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.add_box_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.menu),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // PROFILE PICTURE AND DETAIL
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    displayPicture(),
                    follower_count(num: '21', name: 'Posts'),
                    follower_count(num: '110', name: 'Followers'),
                    follower_count(num: '84', name: 'Following'),
                  ],
                ),

                // BUTTONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    btn_profile(btn_name: 'Edit profile'),
                    btn_profile(btn_name: 'Share profile'),
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.grey.shade900)),
                        onPressed: () {},
                        icon: Icon(Icons.person_add))
                  ],
                ),

                //Story Hightlights
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Stroy hightlights',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Icon(Icons.arrow_drop_up_outlined)
                      ],
                    ),
                    Text(
                      'Keep your favorite stories on your profile',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                color: Colors.grey.shade900,
                                shape: BoxShape.circle),
                            child: Icon(Icons.add, size: 30),
                          ),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                          story_circle(),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on_outlined),
                  ),
                  Tab(icon: Icon(Icons.video_settings_outlined)),
                  Tab(
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                ]),
                Expanded(
                  child: TabBarView(children: [
                    GridView.count(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 3,
                        children: [
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                          grid_image(),
                        ]),
                    GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: [grid_image()],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //ICON
                        Container(
                            padding: EdgeInsets.all(30),
                            // height: 30,
                            // width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Icon(
                              Icons.person_pin_outlined,
                              size: 50,
                            )),
                        //TEXT
                        Container(
                          width: 150,
                          child: Text(
                            'Photos and videos of you',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                            width: 250,
                            child: Text(
                              "When prople tag you in photos and videos, they'll appear here",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
