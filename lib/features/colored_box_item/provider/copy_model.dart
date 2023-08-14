import 'package:flutter/material.dart';

class CopyModel extends ChangeNotifier {
  bool _isCopied = false;
  bool get isCopied => _isCopied;



  void copy(BuildContext context) {
      _isCopied = !_isCopied;
      notifyListeners();
      const snackBar = SnackBar(
        content: Center(
          child: Text("Скопировано"),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }


    void leave(){
      _isCopied = false;
      notifyListeners();
    }
  }