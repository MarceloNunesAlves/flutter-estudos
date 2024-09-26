import 'package:flutter/cupertino.dart';

class HomePageController extends InheritedNotifier<ValueNotifier<int>>{
  HomePageController({required Widget child,}) : super(child: child, notifier: ValueNotifier(0),);

  static HomePageController of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<HomePageController>()!;
  }

  int get value => notifier!.value;

  increment(){
    notifier!.value++;
  }
}