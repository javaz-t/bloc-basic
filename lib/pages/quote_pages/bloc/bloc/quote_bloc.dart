import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
     
     emit(QuoteStateLoading());

     print("Quote request triggred");
     
      await Future.delayed(Duration(seconds: 3),(){

     // emit(QuoteStateLoaded(quote: " Live in the moment  "));
     emit(QuoteErrorState(errrorMsg: 'somethsig weinog'));

     });
     
     
     //error msg will show here whwn the data is noet available 
     

     //emit ereror state

    });
  }
}
