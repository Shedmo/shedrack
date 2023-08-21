// ignore_for_file: must_be_immutable

part of 'category_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryFilterEvent extends Equatable {}

/// Event that is dispatched when the CategoryFilter widget is first created.
class CategoryFilterInitialEvent extends CategoryFilterEvent {
  @override
  List<Object?> get props => [];
}
