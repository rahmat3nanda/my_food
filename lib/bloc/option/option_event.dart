import 'package:equatable/equatable.dart';

abstract class OptionEvent extends Equatable {
  const OptionEvent();

  @override
  List<Object> get props => [];
}

class OptionListEvent extends OptionEvent {
  final bool isArea;

  const OptionListEvent({required this.isArea});

  @override
  String toString() => 'OptionListEvent';
}

class OptionCategoriesEvent extends OptionEvent {
  @override
  String toString() => 'OptionCategoriesEvent';
}
