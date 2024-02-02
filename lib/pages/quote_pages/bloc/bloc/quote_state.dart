part of 'quote_bloc.dart';

@immutable
abstract class QuoteState {}

final class QuoteInitial extends QuoteState {}


final class QuoteStateLoading extends QuoteState{}


final class QuoteStateLoaded extends QuoteState{
  final String quote;

  QuoteStateLoaded({required this.quote});
}


final class QuoteErrorState extends QuoteState{
  final String errrorMsg;

  QuoteErrorState({required this.errrorMsg});
} 