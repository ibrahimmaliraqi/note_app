import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class SinpleBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    debugPrint("create = $bloc");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint("change = $change");
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("close = $bloc");
  }
}
