part of 'bmi_cubit.dart';

@immutable
sealed class BmiState {}

final class BmiInitial extends BmiState {}

final class BmiStateIncrement extends BmiState {}

final class BmiStateDecrement extends BmiState {}


final class BmiAgeChange extends BmiState {}
