import 'package:flutter/cupertino.dart';

class CommonBottomNavigationViewModel extends ChangeNotifier{
  int bottomIndex = 0;


  setBottomNavigationIndex(int value){
    bottomIndex = value;
    notifyListeners();
  }
}