import 'package:flutter/material.dart';
// import 'package:temprature_converter/pages/temprature_converter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salary_calculater/pages/salary_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SalaryCalculator(),
        // home: const TempratureConverter(),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
      designSize: const Size(360, 800),
    );
  }
}
