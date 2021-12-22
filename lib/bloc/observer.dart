import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_food/common/constans.dart';

class Observer extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    printLog(bloc.toString() + " " + event.toString());
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    printLog(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    printLog(bloc.toString() + " " + error.toString());
    printLog(stackTrace.toString());
    super.onError(bloc, error, stackTrace);
  }
}
