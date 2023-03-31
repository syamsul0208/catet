import 'package:flutter/material.dart';
import '../controller/favorite_controller.dart';
import 'package:rcr_mobile/core.dart';
import 'package:get/get.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteController>(
      init: FavoriteController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            flexibleSpace: Stack(
              children: [
                Image.asset(
                  "assets/icon/bg_rcr.png",
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.14,
                ),
                Positioned(
                  top: 80,
                  left: 170,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "Favorite",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "89%",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Your progress",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      LinearProgressIndicator(
                        value: 0.89,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Your progress today",
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
