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

     test('TC-003', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 18, 1, true];

      controller.changePacStatus(false);
      controller.increaseTemperature(17);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-004', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 19, 1, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(20);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-005', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 3, true];

      controller.changePacStatus(false);
      controller.increaseTemperature(22);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });
    
     test('TC-006', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 18, 5, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(19);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-007', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 2, true];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(3);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-008', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 4, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(3);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-009', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 1, true];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-010', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 1, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-011', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 5, true];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-012', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 16, 5, false];

      controller.changePacStatus(false);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-013', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 3, true];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.decreaseFanSpeed(4);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-014', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 5, false];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(4);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-015', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 1, true];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-016', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 1, false];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-017', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 5, true];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-018', () {
      final controller = HomeScreenStateController();

      List expectedValue = [true, 26, 5, false];

      controller.changePacStatus(false);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-019', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 18, 1, false];

      controller.changePacStatus(true);
      controller.decreaseTemperature(18);
      controller.increaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-020', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 23, 5, true];

      controller.changePacStatus(true);
      controller.increaseTemperature(23);
      controller.decreaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-021', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 29, 1, false];

      controller.changePacStatus(true);
      controller.decreaseTemperature(29);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-022', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 1, true];

      controller.changePacStatus(true);
      controller.decreaseTemperature(30);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-023', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 5, false];

      controller.changePacStatus(true);
      controller.increaseTemperature(16);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-024', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 26, 5, true];

      controller.changePacStatus(true);
      controller.increaseTemperature(26);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-025', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 2, false];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(2);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-026', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 2, true];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(2);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-027', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 1, false];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-028', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 1, true];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-029', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 5, false];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-030', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 16, 5, true];

      controller.changePacStatus(true);
      controller.decreaseTemperature(16);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

      test('TC-031', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 2, false];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(2);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-032', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 2, true];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(2);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

    test('TC-033', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 1, false];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-034', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 1, true];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.decreaseFanSpeed(1);
      controller.toggleAirSwing(true);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-035', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 5, false];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(5);
      controller.toggleAirSwing(false);

      bool pacStatus = controller.getPacUnitStatus();
      int temperature = controller.getTemperature();
      int fanSpeed = controller.getFanSpeed();
      bool airSwingStatus = controller.getAirSwingStatus();

      List actualValue = [pacStatus, temperature, fanSpeed, airSwingStatus];

      expect(expectedValue, actualValue);
    });

     test('TC-036', () {
      final controller = HomeScreenStateController();

      List expectedValue = [false, 30, 5, true];

      controller.changePacStatus(true);
      controller.increaseTemperature(30);
      controller.increaseFanSpeed(5);
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