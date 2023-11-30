import 'package:bit_graph/provider/home_provider.dart';
import 'package:bit_graph/provider/list_provider.dart';
import 'package:bit_graph/routes/route_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider()),
      ChangeNotifierProvider(create: (context) => ListProvider()),
    ],
    child: const Main(),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: AppRoute.routesetting,
    );
  }
}
