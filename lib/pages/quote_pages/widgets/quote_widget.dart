
import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({super.key, required this.quote});
  final String quote;

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.all(20.0),
           child: Material(
            
            
            elevation: 20,
             child: Container(
                  
             
              color: Colors.amberAccent,
              padding: const EdgeInsets.all(30),
              child: Center(child: Text(quote)),
             ),
           ),
         );
  }
}