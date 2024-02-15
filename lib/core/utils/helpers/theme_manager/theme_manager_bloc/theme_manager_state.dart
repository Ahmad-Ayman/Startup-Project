part of 'theme_manager_bloc.dart';


@immutable
abstract class ThemeManagerState extends Equatable {
  const ThemeManagerState();
  @override
  List<Object> get props => [];
}

class ThemeManagerInitial extends ThemeManagerState {
  final ThemeData themeData;

  const ThemeManagerInitial({required this.themeData});
}




