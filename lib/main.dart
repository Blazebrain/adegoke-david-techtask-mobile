import 'package:flutter/material.dart';

import 'app_routing/app_navigator.dart';
import 'app_routing/app_router.dart';
import 'base/view_base_classes/style/style.dart';
import 'utilities/constants/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(KlashaStageTwoTechTask());
}

class KlashaStageTwoTechTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      //? ROUTING PARAMS
      navigatorKey: AppNavigator.key,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: welcomeViewRoute,
      //? THEMING
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: darkGreenColor,
          onPrimary: textWhiteColor,
          onSurface: backgroundGreenColor,
        ),
        primaryColor: darkGreenColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        splashColor: strokeBrownColor.withOpacity(0.7),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: backgroundGreenColor,
          selectionColor: textBrownColor.withOpacity(0.35),
          selectionHandleColor: textBrownColor,
        ),
        textTheme: GoogleFonts.montserratTextTheme(),
        dividerColor: strokeBrownColor,
      ),
    );
  }
}
