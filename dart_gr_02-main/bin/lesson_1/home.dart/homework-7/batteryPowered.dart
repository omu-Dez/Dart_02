mixin BatteryPowered {
  double batteryLevel = 99.99;

  void showBattery() {
    print('Battery level: $batteryLevel%');
  }
}