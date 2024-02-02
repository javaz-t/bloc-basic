
import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, this.errorMsg});
  final errorMsg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error,size:50,color: Colors.red,),
        Text(errorMsg),
      ],
    );
  }
}