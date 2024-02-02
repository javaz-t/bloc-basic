import 'package:bloc_counter/pages/quote_pages/bloc/bloc/quote_bloc.dart';
import 'package:bloc_counter/pages/quote_pages/quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BlocWrapperProvider(),
    );
  }
}
