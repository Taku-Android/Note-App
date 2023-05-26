import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver{
  @override
  void onChange(BlocBase bloc, Change change) {

    // this is better if you have important info
    debugPrint('change: ${change}');
  }

  @override
  void onClose(BlocBase bloc) {
    print('onClose: ${bloc}');
  }

  @override
  void onCreate(BlocBase bloc) {
    print('onCreate : ${bloc}');

  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    debugPrint('onError : ${bloc} + $error');

  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }

}