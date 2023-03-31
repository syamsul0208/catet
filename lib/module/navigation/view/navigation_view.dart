import 'package:flutter/material.dart';
import 'package:rcr_mobile/core.dart';
import 'package:rcr_mobile/module/dashboard/view/dashboard_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  State<NavigationView> createState() => _FloatMainNavigationViewState();
}

class _FloatMainNavigationViewState extends State<NavigationView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: selectedIndex,
          children: [
            DashboardView(),
            StatistikView(),
            FavoriteView(),
            ProfileView(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue[900],
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'Create',
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue[900],
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.home,
                        color: selectedIndex == 0
                            ? Colors.white
                            : Colors.blueGrey[400],
                      ),
                      onPressed: () {
                        selectedIndex = 0;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.list,
                        color: selectedIndex == 1
                            ? Colors.white
                            : Colors.blueGrey[400],
                      ),
                      onPressed: () {
                        selectedIndex = 1;
                        setState(() {});
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: selectedIndex == 2
                            ? Colors.white
                            : Colors.blueGrey[400],
                      ),
                      onPressed: () {
                        selectedIndex = 2;
                        setState(() {});
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: selectedIndex == 3
                            ? Colors.white
                            : Colors.blueGrey[400],
                      ),
                      onPressed: () {
                        selectedIndex = 3;
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:rcr_mobile/core.dart';
// import 'package:rcr_mobile/state_util.dart';
// import '../controller/navigation_controller.dart';

// class NavigationView extends StatefulWidget {
//   const NavigationView({Key? key}) : super(key: key);

//   @override
//   State<NavigationView> createState() => _NavigationViewState();
// }

// class _NavigationViewState extends State<NavigationView> {
//   final items = [
//     const Icon(
//       Icons.home,
//       size: 30,
//       color: Colors.white,
//     ),
//     // ignore: prefer_const_constructors
//     Icon(
//       Icons.favorite,
//       size: 30,
//       color: Colors.white,
//     ),
//     // ignore: prefer_const_constructors
//     Icon(
//       Icons.person,
//       size: 30,
//       color: Colors.white,
//     )
//   ];

//   List screen = [
//     DashboardView(),
//     Container(),
//     ProfileView(),
//   ];

//   int index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       bottomNavigationBar: CurvedNavigationBar(
//         items: items,
//         index: index,
//         onTap: (selectIndex) {
//           setState(() {
//             index = selectIndex;
//           });
//         },
//         height: 70,
//         color: Colors.green,
//         backgroundColor: Colors.transparent,
//         animationDuration: Duration(milliseconds: 300),
//       ),
//       body: Container(
//         color: Colors.blue,
//         width: double.infinity,
//         height: double.infinity,
//         alignment: Alignment.center,
//         child: getSelectedWidget(index: index),
//       ),
//     );
//   }

//   Widget getSelectedWidget({required int index}) {
//     Widget widget;
//     switch (index) {
//       case 0:
//         widget = DashboardView();
//         break;
//       case 1:
//         widget = FavoriteView();
//         break;
//       default:
//         widget = ProfileView();
//         break;
//     }
//     return widget;
//   }
// }
