import 'package:dar_arkam_app/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../routes/generator.dart';
class DarElArkam extends StatelessWidget {
  const DarElArkam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppViewContent();
  }
}

class AppViewContent extends StatefulWidget {
  const AppViewContent({Key? key}) : super(key: key);

  @override
  _AppViewContentState createState() => _AppViewContentState();
}

class _AppViewContentState extends State<AppViewContent> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.homePage,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings){
        return RouteGenerator.generateRoute(settings);
      },
    );
  }
}

