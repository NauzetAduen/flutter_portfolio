import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/router.dart' as router;
import 'package:provider/provider.dart';
import 'package:flutter_portfolio/style/theme.dart' as theme;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    router.RouteName routeName = router.RouteName("home");
    return ChangeNotifierProvider.value(
      value: routeName,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nauzet, Portfolio',
        onGenerateRoute: router.Router.generateRoute,
        initialRoute: "/",
        theme: theme.themeData,
      ),
    );
  }
}
