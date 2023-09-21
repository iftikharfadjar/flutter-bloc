// https://dartpad.dev/?id=fdd369962f4ff6700a83c8a540fd6c4c
// This code is distributed under the MIT License.
// Copyright (c) 2018 Felix Angelov.
// You can find the original at https://github.com/felangel/bloc.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'general_observer.dart';
import 'app.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const App());
}
