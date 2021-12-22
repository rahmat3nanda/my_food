import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_food/bloc/observer.dart';
import 'package:my_food/my_food.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(
    () => runApp(const MyFood()),
    blocObserver: Observer(),
  );
}
