import 'enums.dart';

String setImage(PageStates states) {
  String? handlingImage;

  switch (states) {
    case PageStates.error:
      handlingImage = 'assets/images/error.json';
      break;
    case PageStates.noData:
      handlingImage = 'assets/images/no_data.json';
      break;
    case PageStates.noInternet:
      handlingImage = 'assets/images/no_internet.json';
      break;
  }
  return handlingImage;
}
