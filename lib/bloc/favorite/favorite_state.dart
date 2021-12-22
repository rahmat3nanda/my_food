import 'package:equatable/equatable.dart';
import 'package:my_food/data/database.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object> get props => [];
}

class FavoriteInitialState extends FavoriteState {}

class FavoriteDataSuccessState extends FavoriteState {
  final List<Favorite> data;

  const FavoriteDataSuccessState({required this.data});
}

class FavoriteDataFailedState extends FavoriteState {
  final Object? error;

  const FavoriteDataFailedState({required this.error});
}

class FavoriteBatchInsertSuccessState extends FavoriteState {}

class FavoriteBatchInsertFailedState extends FavoriteState {
  final Object? error;

  const FavoriteBatchInsertFailedState({required this.error});
}

class FavoriteInsertSuccessState extends FavoriteState {}

class FavoriteInsertFailedState extends FavoriteState {
  final Object? error;

  const FavoriteInsertFailedState({required this.error});
}

class FavoriteDeleteSuccessState extends FavoriteState {}

class FavoriteDeleteFailedState extends FavoriteState {
  final Object? error;

  const FavoriteDeleteFailedState({required this.error});
}
