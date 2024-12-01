import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:store_app/app.dart';
import 'package:flutter/material.dart';
import 'package:store_app/data/repos/auth_repo.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Supabase.initialize(
    url: 'https://epvnxmwgiwmkcwyhqgpe.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVwdm54bXdnaXdta2N3eWhxZ3BlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI5ODk5NjMsImV4cCI6MjA0ODU2NTk2M30.7Gr1RWlOQ8faw3vmkoAKnj-82PLoML2hQSs2v3xAp7M',
  ).then((_) => Get.put(AuthenticationRepository()));

  runApp(const App());
}
