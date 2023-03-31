import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:rcr_mobile/state_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView>
    implements MvcController {
  static late DashboardController instance;
  late DashboardView view;
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
