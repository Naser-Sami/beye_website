// Packages
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

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
      duration: const Duration(milliseconds: Constants.animationDelay600),
    );
  }

  bool isHover = false;

  void onHover(bool v) {
    isHover = v;
    notifyListeners();
  }

  bool isLogoHover = false;

  void onLogoHover(bool v) {
    isLogoHover = v;
    notifyListeners();
  }

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
        onPressed: () {},
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
