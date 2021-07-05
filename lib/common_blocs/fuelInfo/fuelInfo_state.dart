import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_obigoprojectbloc/models/fuel_information.dart';

@immutable
abstract class FuelInfoState extends Equatable {
  const FuelInfoState();
  @override
  List<Object> get props => [];
}

class Empty extends FuelInfoState {}

class Loading extends FuelInfoState {}

class Error extends FuelInfoState {
  final String message;

  Error({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [this.message];
}

class Loaded extends FuelInfoState {
  final List<FuelInformation> fuelInfos;

  Loaded({required this.fuelInfos});

  @override
  // TODO: implement props
  List<Object> get props => [this.fuelInfos];
}
