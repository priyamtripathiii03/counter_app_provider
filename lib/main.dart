import 'package:counter_app_provider/provider/home_provider.dart';
import 'package:counter_app_provider/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()
{
  runApp(const CounterApp());
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> HomeProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}