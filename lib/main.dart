import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackexpences/app/services/local_storage.dart';
import 'package:trackexpences/app/util/dependency.dart';
import 'package:trackexpences/data/database/database_provider.dart';
import 'package:trackexpences/presentation/app.dart';


void main() async {
  DependencyCreator.init();
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(App());
}

initServices() async {
  print('starting services ...');
  await Get.putAsync(() => LocalStorageService().init());
  await DatabaseService().database;
  print('All services started...');
}
