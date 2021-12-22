import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_food/bloc/favorite/favorite_bloc.dart';
import 'package:my_food/bloc/meal/meal_bloc.dart';
import 'package:my_food/bloc/option/option_bloc.dart';
import 'package:my_food/common/constans.dart';
import 'package:my_food/common/styles.dart';
import 'package:my_food/page/splash_page.dart';

class MyFood extends StatelessWidget {
  const MyFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MealBloc>(
          create: (BuildContext context) => MealBloc(MealInitialState()),
        ),
        BlocProvider<OptionBloc>(
          create: (BuildContext context) => OptionBloc(OptionInitialState()),
        ),
        BlocProvider<FavoriteBloc>(
          create: (BuildContext context) => FavoriteBloc(
            FavoriteInitialState(),
          ),
        ),
      ],
      child: MaterialApp(
        title: kGAppName,
        theme: tdMain(context),
        home: const SplashPage(),
      ),
    );
  }
}
