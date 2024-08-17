import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_global_data_manage/home_screen.dart';
import 'package:provider_global_data_manage/provider_global.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProviderGlobal(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
