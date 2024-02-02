import 'package:bloc_counter/pages/quote_pages/bloc/bloc/quote_bloc.dart';
import 'package:bloc_counter/pages/quote_pages/widgets/custom_button.dart';
import 'package:bloc_counter/pages/quote_pages/widgets/error_msg.dart';
import 'package:bloc_counter/pages/quote_pages/widgets/quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BlocWrapperProvider extends StatelessWidget {
  const BlocWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context)=>QuoteBloc(), // tree under this page can acess the bloc 
    child: const QuotePage(),);
  }
}

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  QuoteWidget(quote: "hei"),
          //  ErrorMessage(errorMsg: 'something went wrong',),

          // CircularProgressIndicator(),
          Expanded(
            child: Center(
              child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return const Text('quote is waiting');
                  } else if (state is QuoteStateLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.purple,
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quote: state.quote);
                  } else if (state is QuoteErrorState) {
                    return ErrorMessage(
                      errorMsg: state.errrorMsg,
                    );
                  }
                  return const ErrorMessage(errorMsg: "somethig went wrong",);
                },
              ),
            ),
          ),
          const Center(child: CustomButton()),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
