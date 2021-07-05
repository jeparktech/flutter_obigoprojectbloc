import '../../models/fuel_information.dart';
import '../../database/fuelDBHelper.dart';

class FuelInfoRepository {
  final fuelDBHelper = FuelDBHelper();

  Future insertFuelInfo(FuelInformation fuelInfo) =>
      fuelDBHelper.insertFuelInfo(fuelInfo);
  Future getFuelInfos() => fuelDBHelper.getFuelInfos();
  Future updateFuelInfo(FuelInformation fuelInfo) =>
      fuelDBHelper.updateFuelInfo(fuelInfo);
  Future deleteFuelInfo(String date) => fuelDBHelper.deleteFuelInfo(date);
  Future hasFuelInfo(String date) => fuelDBHelper.hasFuelInfo(date);
}
