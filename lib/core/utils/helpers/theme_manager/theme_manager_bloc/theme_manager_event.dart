part of 'theme_manager_bloc.dart';

@immutable
abstract class ThemeManagerEvent {}

class ChangeThemeEvent extends ThemeManagerEvent {
  final ThemeEnum theme;

  ChangeThemeEvent({required this.theme});
}

