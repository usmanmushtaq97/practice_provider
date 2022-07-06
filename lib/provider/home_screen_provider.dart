import 'package:flutter/foundation.dart';
class HomeScreenProvider with ChangeNotifier{
 int count = 0;
 int get  getCount{
    return count;
 }
 void setCount(){
   count++;
   notifyListeners();
 }
}