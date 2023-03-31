// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Qprofile extends StatefulWidget {
  final String title;

  final String? label;

  const Qprofile({
    Key? key,
    required this.title,
    this.label,
  }) : super(key: key);

  @override
  State<Qprofile> createState() => _QprofileState();
}

class _QprofileState extends State<Qprofile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.label!,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: const Color(0xff3C3C43).withOpacity(0.6),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
