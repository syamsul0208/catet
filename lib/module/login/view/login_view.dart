import 'package:flutter/material.dart';

import 'package:rcr_mobile/core.dart';

import 'package:rcr_mobile/module/navigation/view/navigation_view.dart';

import 'package:rcr_mobile/shared/widget/textfieldnew/textfield.dart';

import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    "assets/icon/bg_rcr.png",
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height * 0.14,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 340, left: 40),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.24,
                  decoration: const BoxDecoration(
                    // ignore: unnecessary_const
                    boxShadow: const [
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
                      Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.only(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              initialValue: controller.email,
                              maxLength: 40,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                                suffixIcon: Icon(
                                  Icons.email,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                controller.email = value;
                              },
                            ),
                            TextFormField(
                              initialValue: controller.password,
                              maxLength: 20,
                              obscureText: controller.passwordVisible,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                // ignore: prefer_const_constructors
                                labelStyle: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    controller.passwordVisible =
                                        !controller.passwordVisible;
                                    controller.update();
                                  },
                                  child: Icon(
                                    controller.passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                              onChanged: (value) {
                                controller.password = value;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Get.offAll(NavigationView());
                  },
                  child: const Text("Login"),
                )),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(40),
                child: const Text(
                  "Butuh Bantuan?",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
