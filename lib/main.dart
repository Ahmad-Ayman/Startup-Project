import 'package:flutter/material.dart';

import 'core/storage/local/cache_helper.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}
