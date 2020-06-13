import 'package:flutter/material.dart';
import 'package:templateflutter/app/app.dart'; 
import 'package:templateflutter/injection.dart' as di;
import 'config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  //Change This if Prod Builded
  FlavorConfig(
    flavor: Flavor.DEVELOPMENT,
    values: FlavorValues(baseUrl: BaseUrl().baseUrlDevelopment),
  );
  await di.init();
  runApp(App());
}
