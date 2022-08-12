import 'package:dompetku/screens/dompetku.dart';
import 'package:flutter/widgets.dart';

import '../screens/splash_screen/splash_screen.dart';

class Routes {
  Map<String, WidgetBuilder> getRoutes = {
    '/': (_) => DompetKu(),
    '/splash': (_) => SplashScreen(),
  };
}
