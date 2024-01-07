import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_air_conditioning_system/controller/controller.dart';

void main() {
  group('Mobile Air Conditioning System testing', () {
    test('TC-001', () {
      final controller = HomeScreenStateController();

      // test input for status, temperature, fan speed, air swing
      List expectedValue = [true, 26, 3, true];

      /* note that for status and air swing only have one method
         for temperature, please check and change to increase or decrease
      */
      controller.changePacStatus(false);
      controller.increaseTemperature(25);
      controller.increaseFanSpeed(2);
      controller.toggleAirSwing(false);

      // get the value from the controller
      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      // output created by the system
      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      // compare both expected and actual
      expect(expectedValue, actualValue);
    });

    test('TC-002', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 27, 1, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(28);
      controller.decreaseFanSpeed(2);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });
  });
}