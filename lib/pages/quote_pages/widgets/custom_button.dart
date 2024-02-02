
import 'package:bloc_counter/pages/quote_pages/bloc/bloc/quote_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: ElevatedButton(onPressed: (){
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      }, child: const Text('Gemereate Quote')),
    );
  }
}