import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/fuel_information.dart';
import '../../repository/fuel_repository/fuelInfo_repository.dart';
import './fuelInfo_event.dart';
import './fuelInfo_state.dart';

class FuelInfoBloc extends Bloc<FuelInfoEvent, FuelInfoState> {
  final FuelInfoRepository repository;

  FuelInfoBloc({required this.repository}) : super(Empty());

  @override
  Stream<FuelInfoState> mapEventToState(FuelInfoEvent event) async* {
    if (event is InsertFuelInfoEvent) {
      yield* _mapInsertFuelInfoToState(event);
    } else if (event is GetFuelInfosEvent) {
      yield* _mapGetFuelInfosToState(event);
    } else if (event is UpdateFuelInfoEvent) {
      //yield* _mapUpdateFuelInfoToState(event);
    } else if (event is DeleteFuelInfoEvent) {
      //yield* _mapDeleteFuelInfoToState(event);
    } else if (event is HasFuelInfoEvent) {
      //yield* _mapHasFuelInfoToState(event);
    }
  }

  Stream<FuelInfoState> _mapInsertFuelInfoToState(
      InsertFuelInfoEvent event) async* {
    try {
      if (state is Loaded) {
        final parsedState = state as Loaded;
        final prevFuelInfos = [...parsedState.fuelInfos];
        final newFuelInfos = [...prevFuelInfos, event.fuelInfo];

        yield Loaded(fuelInfos: newFuelInfos);

        final resp = await this.repository.insertFuelInfo(event.fuelInfo);

        yield Loaded(fuelInfos: [...prevFuelInfos, resp]);
      }
    } catch (e) {
      yield Error(message: e.toString());
    }
  }

  Stream<FuelInfoState> _mapGetFuelInfosToState(
      GetFuelInfosEvent event) async* {
    try {
      yield Loading();
      final fuelInfos = await this.repository.getFuelInfos();

      yield Loaded(fuelInfos: fuelInfos);
    } catch (e) {
      yield Error(message: e.toString());
    }
  }

  Stream<FuelInfoState> _mapDeleteFuelInfosToState(
      DeleteFuelInfoEvent event) async* {}
}
