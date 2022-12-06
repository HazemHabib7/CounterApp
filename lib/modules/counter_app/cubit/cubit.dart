import 'package:bloc/bloc.dart';
import 'package:counter_app/modules/counter_app/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
CounterCubit() : super(InitialState());
static CounterCubit get(context) => BlocProvider.of(context);
int count=1;

void plus(){
  count++;
  emit(PlusState(count));
}

void minus(){
  count--;
  emit(MinusState(count));
}

}
