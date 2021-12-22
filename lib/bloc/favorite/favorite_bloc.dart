import 'package:bloc/bloc.dart';
import 'package:my_food/bloc/favorite/favorite_event.dart';
import 'package:my_food/bloc/favorite/favorite_state.dart';
import 'package:my_food/common/constans.dart';
import 'package:my_food/data/database.dart';

export 'package:my_food/bloc/favorite/favorite_event.dart';
export 'package:my_food/bloc/favorite/favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc(FavoriteInitialState initialState) : super(initialState) {
    on<FavoriteDataEvent>((event, emit) async {
      emit(FavoriteInitialState());
      try {
        List<Favorite> data = await Database().getFavorites;
        emit(FavoriteDataSuccessState(data: data));
      } catch (e) {
        emit(FavoriteDataFailedState(error: e));
      }
    });
    on<FavoriteBatchInsertEvent>((event, emit) async {
      emit(FavoriteInitialState());
      try {
        var asd = await Database().insertFavorites(event.data);
        printLog(asd);
        emit(FavoriteBatchInsertSuccessState());
      } catch (e) {
        emit(FavoriteBatchInsertFailedState(error: e));
      }
    });
    on<FavoriteInsertEvent>((event, emit) async {
      emit(FavoriteInitialState());
      try {
        var asd = await Database().insertFavorite(event.data);
        printLog(asd);
        emit(FavoriteInsertSuccessState());
      } catch (e) {
        emit(FavoriteInsertFailedState(error: e));
      }
    });
    on<FavoriteDeleteEvent>((event, emit) async {
      emit(FavoriteInitialState());
      try {
        var asd = await Database().deleteFavorite(event.id);
        printLog(asd);
        emit(FavoriteBatchInsertSuccessState());
      } catch (e) {
        emit(FavoriteBatchInsertFailedState(error: e));
      }
    });
  }
}
