import 'package:equatable/equatable.dart';
import 'package:my_food/data/database.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

class FavoriteDataEvent extends FavoriteEvent {
  @override
  String toString() => 'FavoriteDataEvent';
}

class FavoriteBatchInsertEvent extends FavoriteEvent {
  final List<FavoritesCompanion> data;

  const FavoriteBatchInsertEvent({required this.data});

  @override
  String toString() => 'FavoriteBatchInsertEvent';
}

class FavoriteInsertEvent extends FavoriteEvent {
  final FavoritesCompanion data;

  const FavoriteInsertEvent({required this.data});

  @override
  String toString() => 'FavoriteInsertEvent';
}

class FavoriteDeleteEvent extends FavoriteEvent {
  final int id;

  const FavoriteDeleteEvent(this.id);

  @override
  String toString() => 'FavoriteDeleteEvent';
}
