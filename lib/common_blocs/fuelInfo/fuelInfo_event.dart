import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_obigoprojectbloc/models/fuel_information.dart';

@immutable
abstract class FuelInfoEvent extends Equatable {
  const FuelInfoEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InsertFuelInfoEvent extends FuelInfoEvent {
  final FuelInformation fuelInfo;

  InsertFuelInfoEvent({required this.fuelInfo});

  @override
  // TODO: implement props
  List<Object?> get props => [this.fuelInfo];
}

class GetFuelInfosEvent extends FuelInfoEvent {}

class UpdateFuelInfoEvent extends FuelInfoEvent {
  final FuelInformation fuelInfo;

  UpdateFuelInfoEvent({required this.fuelInfo});

  @override
  // TODO: implement props
  List<Object?> get props => [this.fuelInfo];
}

class DeleteFuelInfoEvent extends FuelInfoEvent {
  final String date;

  DeleteFuelInfoEvent({required this.date});

  @override
  // TODO: implement props
  List<Object?> get props => [this.date];
}

class HasFuelInfoEvent extends FuelInfoEvent {
  final String date;

  HasFuelInfoEvent({required this.date});

  @override
  // TODO: implement props
  List<Object?> get props => [this.date];
}
