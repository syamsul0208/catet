import 'package:flutter/material.dart';
import 'package:rcr_mobile/core.dart';
import '../controller/profile_controller.dart';
import '../widget/profile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    List<Map<String, dynamic>> card2 = [
      {
        'name': 'Bantuan',
        'subname': '',
        'icon': Icons.help,
      },
      {
        'name': 'Ganti Password',
        'subname': '',
        'icon': Icons.lock,
      },
      {
        'name': 'keluar',
        'subname': '',
        'icon': Icons.logout,
      },
    ];
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
                  "Profile",
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
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(124 / 2),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                            spreadRadius: 8)
                      ],
                    ),
                    child: SingleChildScrollView(
                      controller: ScrollController(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 42.0,
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Syamsul Maarif",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                            spreadRadius: 8)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Information",
                            style: TextStyle(
                              color: const Color(0xff3C3C43).withOpacity(0.6),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Column(
                            children: [
                              Qprofile(
                                label: " Nama Lengkap : ",
                                title: "Syamsul Maarif",
                              ),
                              Qprofile(
                                label: " No Id : ",
                                title: "216",
                              ),
                              SizedBox(
                                height: 50,
                                child: Container(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Nama Kantor :",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "PT Minori",
                                        style: TextStyle(
                                          color: const Color(0xff3C3C43)
                                              .withOpacity(0.6),
                                          fontSize: 14,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.chevron_right,
                                        size: 24,
                                        color: Color(0xffD1D1D6),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Qprofile(
                                label: " Tanggal Lahir : ",
                                title: "-",
                              ),
                              Qprofile(
                                label: " jabatan: ",
                                title: "Staff",
                              ),
                              Qprofile(
                                  label: " email : ",
                                  title: "msyamsul725@gmail.com"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 24,
                            offset: const Offset(0, 8),
                            spreadRadius: 8)
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Information",
                            style: TextStyle(
                              color: const Color(0xff3C3C43).withOpacity(0.6),
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Column(
                            children: card2.map(
                              (e) {
                                return SizedBox(
                                  height: 50,
                                  child: Material(
                                    color: Colors.white,
                                    child: InkWell(
                                      onTap: e['ontap'],
                                      child: Container(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 28,
                                              width: 28,
                                              padding:
                                                  const EdgeInsets.all(5.5),
                                              decoration: BoxDecoration(
                                                color: e["color"],
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Text(
                                              e["name"],
                                              style: const TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            const Spacer(),
                                            Text(
                                              e["subname"],
                                              style: TextStyle(
                                                color: const Color(0xff3C3C43)
                                                    .withOpacity(0.6),
                                                fontSize: 17,
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            const Icon(
                                              Icons.chevron_right,
                                              size: 24,
                                              color: Color(0xffD1D1D6),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
