import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rcr_mobile/core.dart';
import 'package:rcr_mobile/module/dashboard/widget/menu_utama.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/icon/bg_rcr_a.png",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Positioned(
                left: 320,
                top: 60,
                child: const Badge(
                  label: Text(
                    "4",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100, left: 40),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.2,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue[200]!,
                      blurRadius: 11,
                      offset: Offset(0, 11),
                    ),
                  ],
                  color: Color.fromARGB(163, 46, 69, 173),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Customers",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "1,240",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "+25%",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // margin: const EdgeInsets.only(bottom: 80),
                          padding: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.people,
                            size: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Orders",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "4,200",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "+36%",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                          child: const Icon(
                            Icons.list,
                            size: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          LayoutBuilder(
            builder: (context, constraint) {
              List menus = [
                {
                  "icon": Icons.abc,
                  "label": "Home",
                  "onTap": () {},
                },
                {
                  "icon": Icons.tiktok,
                  "label": "Tiktok",
                  "onTap": () {},
                },
                {
                  "icon": Icons.facebook,
                  "label": "Facebook",
                  "onTap": () {},
                },
                {
                  "icon": Icons.access_alarm,
                  "label": "Task",
                  "onTap": () {},
                },
                {
                  "icon": Icons.developer_board,
                  "label": "Developer",
                  "onTap": () {},
                },
                {
                  "icon": Icons.web,
                  "label": "Website",
                  "onTap": () {},
                },
                {
                  "icon": Icons.mobile_screen_share_rounded,
                  "label": "Share",
                  "onTap": () {},
                },
                {
                  "icon": Icons.event,
                  "label": "Event",
                  "onTap": () {},
                },
              ];

              return Wrap(
                children: List.generate(
                  menus.length,
                  (index) {
                    var item = menus[index];

                    var size = constraint.biggest.width / 4;

                    return SizedBox(
                      width: size,
                      height: size,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blueGrey,
                          animationDuration: const Duration(milliseconds: 1000),
                          backgroundColor: Colors.transparent,
                          splashFactory: InkSplash.splashFactory,
                          shadowColor: Colors.transparent,
                          elevation: 0.0,
                        ),
                        onPressed: () => item["onTap"](),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              item["icon"],
                              color: Colors.blueGrey,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              "${item["label"]}",
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 8.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            width: MediaQuery.of(context).size.width,
            child: const Text(
              "Populer Search",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),

          /*
          TODO: Implement this @ controller
          int currentIndex = 0;
          final CarouselController carouselController = CarouselController();
          */
          Builder(builder: (context) {
            List images = [
              "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
              "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
              "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
              "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
              "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
            ];

            return Column(
              children: [
                CarouselSlider(
                  carouselController: controller.carouselController,
                  options: CarouselOptions(
                    height: 160.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      controller.currentIndex = index;
                      controller.setState(() {});
                    },
                  ),
                  items: images.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6.0),
                            ),
                            image: DecorationImage(
                              image: NetworkImage(
                                imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.carouselController
                          .animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        controller.currentIndex == entry.key
                                            ? 0.9
                                            : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.height;
    double h = size.height;

    final path = Path();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
