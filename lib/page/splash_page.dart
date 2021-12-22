import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_food/bloc/meal/meal_bloc.dart';
import 'package:my_food/common/styles.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late MealBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<MealBloc>(context);
    _bloc.add(const MealSearchEvent(keyword: "Chi"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hPrimaryColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return const Center(
      child: FlutterLogo(size: 86.0),
    );
  }
}
