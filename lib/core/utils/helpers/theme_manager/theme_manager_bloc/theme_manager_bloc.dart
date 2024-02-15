import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:startupproject/core/utils/helpers/extensions.dart';

import '../../enums.dart';

part 'theme_manager_event.dart';
part 'theme_manager_state.dart';

class ThemeManagerBloc extends Bloc<ThemeManagerEvent, ThemeManagerState> {
  ThemeManagerBloc() : super(ThemeManagerInitial(themeData:ThemeEnum.LIGHT.generateTheme)) {
    on<ChangeThemeEvent>((event, emit) {
      // TODO: implement event handler
      ThemeData themeData = event.theme.generateTheme;
      emit(ThemeManagerInitial( themeData: themeData));
    });
  }
}

