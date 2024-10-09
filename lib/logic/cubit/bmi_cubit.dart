import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  static BmiCubit get(context) => BlocProvider.of(context);

  int age = 20;

  void incrementAge() {
    age++;
    emit(BmiStateIncrement());
  }

  void decrementAge() {
    age--;
    emit(BmiStateDecrement());
  }
}
