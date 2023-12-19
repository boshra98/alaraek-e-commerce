

 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';




abstract class OnBoardingController extends GetxController {
  next(); //when i press on button translate to next page
  onPageChanged(int index); //the reactions fo dots
  }

  class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;
  @override
  next() {
  currentPage++ ;
  pageController.animateToPage(currentPage,
  duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }


  @override
  onPageChanged(int index) {
  currentPage = index;
  update();
  }
  @override
  void onInit() {
  pageController = PageController();
  super.onInit();
  }
  }
