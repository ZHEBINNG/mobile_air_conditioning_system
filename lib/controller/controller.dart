class HomeScreenStateController {
  late bool isPacUnitOn;
  late int temperature;
  late int fanSpeed;
  late bool isAirSwingOn;

  void changePacStatus(isPacUnitOn) {
    isPacUnitOn = !isPacUnitOn;
    setPacStatus(isPacUnitOn);
  }

  void increaseTemperature(temperature) {
    if (getPacUnitStatus()) {
      temperature = (temperature < 30) ? temperature + 1 : 30;
      setTemperature(temperature);
    } else {
      setTemperature(temperature);
    }
  }

  void decreaseTemperature(temperature) {
    if (getPacUnitStatus()) {
      temperature = (temperature > 16) ? temperature - 1 : 16;
      setTemperature(temperature);
    } else {
      setTemperature(temperature);
    }
  }

  void increaseFanSpeed(fanSpeed) {
    if (getPacUnitStatus()) {
      fanSpeed = (fanSpeed < 5) ? fanSpeed + 1 : 5;
      setFanSpeed(fanSpeed);
    } else {
      setFanSpeed(fanSpeed);
    }
  }

  void decreaseFanSpeed(fanSpeed) {
    if (getPacUnitStatus()) {
      fanSpeed = (fanSpeed > 1) ? fanSpeed - 1 : 1;
      setFanSpeed(fanSpeed);
    } else {
      setFanSpeed(fanSpeed);
    }
  }

  void toggleAirSwing(isAirSwingOn) {
    if (getPacUnitStatus()) {
      isAirSwingOn = !isAirSwingOn;
      setAirSwingStatus(isAirSwingOn);
    } else {
      setAirSwingStatus(isAirSwingOn);
    }
  }

  int getTemperature() {
    return temperature;
  }

  int getFanSpeed() {
    return fanSpeed;
  }

  bool getAirSwingStatus() {
    return isAirSwingOn;
  }

  bool getPacUnitStatus() {
    return isPacUnitOn;
  }

  void setPacStatus(status) {
    isPacUnitOn = status;
  }

  void setAirSwingStatus(status) {
    isAirSwingOn = status;
  }

  void setTemperature(temp) {
    temperature = temp;
  }

  void setFanSpeed(speed) {
    fanSpeed=speed;
  }
}