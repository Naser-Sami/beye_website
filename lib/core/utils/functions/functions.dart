import '/core/utils/constants/constants.dart';

class Func {
  // FOR SVG ICONS
  static String getIconSVG(String name) {
    try {
      return '${Constants.pathSystemIcons}$name.svg';
    } catch (e) {
      return '';
    }
  }

  // FOR PNG IMAGES
  static String getPngImage(String name) {
    try {
      return '${Constants.pathImages}$name.png';
    } catch (e) {
      return '';
    }
  }
}
