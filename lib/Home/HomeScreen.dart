import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stacked_list_carousel/stacked_list_carousel.dart';
import 'package:story_page_view/story_page_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<AwesomeInAppBanner> banners = <AwesomeInAppBanner>[
    AwesomeInAppBanner(
      'https://th.bing.com/th?id=OSK.HEROWdKf8NKVs2CPYrdJIj00N79jBvQXo4RpPGKOEozLlwU&w=472&h=280&c=13&rs=2&o=6&oif=webp&pid=SANGAM',
      'chris Hemsworth ',
      Colors.green.shade300,
    ),
    AwesomeInAppBanner(
      'https://th.bing.com/th/id/OIP.lvgtgD9n0oaEUYJEvjU2_wHaLK?w=203&h=306&c=7&r=0&o=5&pid=1.7',
      'Scarlett johansson',
      Colors.red.shade300,
    ),
    AwesomeInAppBanner(
      'https://th.bing.com/th?id=ALSTUB94DB0C459C990E3BA9BED3D16DC88637B6E1C990A4A4F45ECB9DD8C3A83D726&w=472&h=280&rs=2&o=6&oif=webp&pid=SANGAM',
      'Chris evans',
      Colors.purple.shade300,
    ),
    AwesomeInAppBanner(
      'https://th.bing.com/th?id=ALSTU4C62E6D08E27A0E1F99E8AD44276A64BDCE5845CDE37F1AC06362E0BA13F5F38&w=472&h=280&c=13&rs=2&o=6&oif=webp&pid=SANGAM',
      'Gal Gadot',
      Colors.yellow.shade300,
    ),
    AwesomeInAppBanner(
      'https://picsum.photos/id/500/600/900',
      'My awesome banner 5',
      Colors.blue.shade300,
    ),
    AwesomeInAppBanner(
      'https://picsum.photos/id/600/600/900',
      'My awesome banner 6',
      Colors.orange.shade300,
    ),
  ];
  List<AwesomeInAppBanner> Stories = <AwesomeInAppBanner>[
   AwesomeInAppBanner(
      'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-black-6-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ),  AwesomeInAppBanner(
      'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-1-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ), AwesomeInAppBanner(
      'https://cdn2.iconfinder.com/data/icons/avatars-2-7/128/25-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ), AwesomeInAppBanner(
      'https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/36-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ),
 AwesomeInAppBanner(
      'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-black-6-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ),  AwesomeInAppBanner(
      'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-male-1-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ), AwesomeInAppBanner(
      'https://cdn2.iconfinder.com/data/icons/avatars-2-7/128/25-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ), AwesomeInAppBanner(
      'https://cdn1.iconfinder.com/data/icons/avatars-1-5/136/36-512.png',
      'My awesome banner 3',
      Colors.purple.shade300,
    ),

  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff040F2D),
        appBar: AppBar(
          backgroundColor: const Color(0xff040F2D),
          elevation: 0,
          leading: const Icon(Icons.menu),
          title: const Text('Flutter UI'),
          actions: const [
            Icon(Icons.supervised_user_circle),
          ],
        ),
        bottomNavigationBar:  SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home,color: Colors.white,),
              title: const Text("Home",style: TextStyle(color: Colors.white),),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border,color: Colors.white),
              title: const Text("Likes",style: TextStyle(color: Colors.white),),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.search,color: Colors.white),
              title: const Text("Search",style: TextStyle(color: Colors.white),),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person,color: Colors.white),
              title: const Text("Profile",style: TextStyle(color: Colors.white)),
              selectedColor: Colors.teal,
            ),
          ],
        ),
        body: Container(
          height: 1000,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: ListView(
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: List.generate(
                    Stories.length,
                    (i) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.accents[i % 16],
                          borderRadius: BorderRadius.circular(60)),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.accents[i % 16],
                          radius: 50,child: Image.network(Stories[i].imgUrl,fit: BoxFit.fill,)),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(height: 3,color: Colors.grey,),
              ),

              // SizedBox(
              //   height: 100,
              //   child: StoryPageView(
              //     // Customize indicator looking
              //     indicatorStyle: StoryPageIndicatorStyle(
              //       height: 6,
              //       gap: 12,
              //       unvisitedColor: Colors.blue.shade200,
              //       visitedColor: Colors.blue.shade900,
              //       timerBarBackgroundColor:
              //       Colors.blue.shade300, // default to unvisitedColor
              //       timerBarColor: Colors.blue.shade700, // default to vistedColor
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(12),
              //       ),
              //     ),
              //     controller: StoryPageController(
              //       // Customize paging animation style
              //       pagingCurve: Curves.elasticOut,
              //       pagingDuration: const Duration(milliseconds: 2000),
              //     ),
              //     storyDuration: const Duration(seconds: 5),
              //     // Customize whole layout
              //     indicatorPosition: StoryPageIndicatorPosition.custom(
              //       layoutBuilder: (c, pageView, indicator) => SafeArea(
              //         child: Column(
              //           children: [
              //             // Put page indicator on top of the pager
              //             Padding(
              //               padding: const EdgeInsets.symmetric(
              //                 vertical: 8,
              //                 horizontal: 12,
              //               ),
              //               child: indicator,
              //             ),
              //             Expanded(
              //               child: pageView,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     children: [
              //       Container(color: Colors.red),
              //       Container(color: Colors.orange),
              //       Container(color: Colors.yellow),
              //       Container(color: Colors.green),
              //       Container(color: Colors.blue),
              //       Container(color: Colors.indigo),
              //       Container(color: Colors.purple),
              //     ],
              //   ),
              // ),

              StackedListCarousel<AwesomeInAppBanner>(
                items: banners,
                // Highly customizable builder function which actual widget's size,
                // its index inside item list, and whether built item is outermost
                itemBuilder: (context, size, index, isOutermost) => ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),

                  child: Stack(
                    children: [

                      Image.network(
                        banners[index].imgUrl,
                        width: size.width,
                        height: size.height,
                        fit: BoxFit.cover,
                      ),

                      if (!isOutermost)
                        SizedBox.expand(
                          child:
                              Container(color: Colors.grey.withOpacity(0.65)),
                        ),
                      Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            banners[index].title,
                            style: TextStyle(
                             // fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30.0 *
                                  size.width /
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Config card's aspect ratio
                cardAspectRatio: 2 / 3,
                // Config outermost card height factor relative to view height
                outermostCardHeightFactor: 0.7,
                // Config max item displayed count
                maxDisplayedItemsCount: 3,
                // Config view size height factor relative to view height
                viewSizeHeightFactor: 0.85,
                // Config animation transitions duration
                autoSlideDuration: const Duration(minutes: 10),
              //  transitionDuration: const Duration(milliseconds: 250),
              //  outermostTransitionDuration: const Duration(milliseconds: 200),
                // You can listen for discarded item and its swipe direction
                onItemDiscarded: (index, direction) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'banner ${banners[index].title} discarded in $direction direction!'),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}

class AwesomeInAppBanner {
  final String imgUrl;
  final String title;
  final Color color;

  const AwesomeInAppBanner(
    this.imgUrl,
    this.title,
    this.color,
  );
}
