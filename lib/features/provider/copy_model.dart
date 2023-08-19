import 'package:colored_box/features/colored_box_item/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CopyModel extends ChangeNotifier {
  bool _isCopy = false;
  bool get isCopy => _isCopy;
  SnackBar snackBarSuccess = SnackBar(
    behavior: SnackBarBehavior.floating,
    width: 150.w,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
    backgroundColor: const Color.fromRGBO(9, 15, 47, 0.8),
    content: const Center(
      child: Text("HEX скопирован"),
    ),
  );

  SnackBar snackBarError = SnackBar(
    behavior: SnackBarBehavior.floating,
    width: 150.w,
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
    content: const Center(
      child: Text(
        "Цвет в разработке",
        style: TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ),
  );

  void copyLogicAndDisplaySnack(BuildContext context, String item) {
    if (item != "В разработке") {
      _isCopy = !_isCopy;
      notifyListeners();
    }
    if (_isCopy) {
      ScaffoldMessenger.of(context).showSnackBar(snackBarSuccess);
    }
  }

  void noDataLogicAndDisplaySnack(
      BuildContext context, String item, GridItemScreen color) {
    if (item != 'В разработке') {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => color),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBarError);
    }
  }

  void leave(BuildContext context) {
    Navigator.of(context).pop();
  }
}
