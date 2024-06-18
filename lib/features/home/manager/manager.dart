// Packages
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// Files
import '/core/utils/constants/const.dart';

class HomeManager extends ChangeNotifier {
  List<GlobalKey> navigatorKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  final scrollController = ScrollController();

  void scrollToSection(BuildContext context) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: Constants.animationDelay2000),
    );
  }

  bool show = false;

  void showFloatActionButton() {
    show = true;
    notifyListeners();
  }

  void hideFloatActionButton() {
    show = false;
    notifyListeners();
  }

  void handleScroll() async {
    scrollController.addListener(
      () {
        if (scrollController.position.userScrollDirection ==
            ScrollDirection.reverse) {
          showFloatActionButton();
        }
        if (scrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          hideFloatActionButton();
        }
      },
    );
  }

  void scrollToTop() {
    if (scrollController.hasClients) {
      final position = scrollController.position.minScrollExtent;
      scrollController.animateTo(
        position,
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut,
      );
    }

    hideFloatActionButton();
  }

  bool isHover = false;

  void onHover(bool v) {
    isHover = v;
    notifyListeners();
  }

  bool isContactUsHover = false;

  void onContactUsHover(bool v) {
    isContactUsHover = v;
    notifyListeners();
  }

  List<bool> isLogoHover = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  void onLogoHover(bool v, int index) {
    isLogoHover[index] = v;
    notifyListeners();
  }

  ColorFilter greyStyle = const ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0
  ]);

  List<HeaderData> headerData = [];

  void fillHeaderData(BuildContext context) {
    headerData = [
      HeaderData(
        title: 'Home',
        isSelected: true,
        onPressed: () {
          // scrollToSection(navigatorKeys[0].currentContext!);
          context.beamToNamed('/');
          print('${context.currentBeamPages.first.title}');
        },
      ),
      HeaderData(
        title: 'Products',
        isSelected: false,
        onPressed: () {
          // scrollToSection(navigatorKeys[1].currentContext!);
          context.beamToNamed('/products');
          print('${context.currentBeamPages.first.title}');
        },
      ),
      HeaderData(
        title: 'Services',
        isSelected: false,
        onPressed: () {},
      ),
      HeaderData(
        title: 'Competitive Advantage',
        isSelected: false,
        onPressed: () {},
      ),
      HeaderData(
        title: 'Customers',
        isSelected: false,
        onPressed: () {},
      ),
      HeaderData(
        title: 'Careers',
        isSelected: false,
        onPressed: () {},
      ),
      HeaderData(
        title: 'About Us',
        isSelected: false,
        onPressed: () {
          scrollToSection(navigatorKeys[6].currentContext!);
        },
      ),
      HeaderData(
        title: 'Contact Us',
        isSelected: false,
        onPressed: () {
          // scrollToSection(navigatorKeys[7].currentContext!);
          context.beamToNamed('/contact-us');
          print('${context.currentBeamPages.first.title}');
        },
      ),
    ];
  }
}

class HeaderData {
  String title;
  bool isSelected;
  void Function()? onPressed;

  HeaderData(
      {required this.title, required this.isSelected, required this.onPressed});
}
