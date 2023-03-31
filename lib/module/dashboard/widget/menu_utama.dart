// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtamaState();
}

class _MenuUtamaState extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.154,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.122,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Get.to(const AttedanceView(),
                      //     transition: Transition.fade,
                      //     duration: const Duration(milliseconds: 400));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: 90,
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icon/icons_absen.png",
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Absen",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.122,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 24,
                    offset: Offset(0, 11),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Get.to(const SubmissionView(),
                      //     transition: Transition.fade,
                      //     duration: const Duration(milliseconds: 500));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: 90,
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icon/icons_ijin.png",
                        width: 24.0,
                        height: 24.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "DL/Izin/Cuti",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
