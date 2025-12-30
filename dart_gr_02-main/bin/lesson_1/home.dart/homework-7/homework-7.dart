import 'device.dart';
import 'smartLamp.dart';
import 'smartSpeaker.dart';
import 'smartThermostat.dart';
import 'adjustable.dart';
import 'batteryPowered.dart';

void main() {
  List<Device> devices = [SmartLamp('Living Room Lamp'), SmartSpeaker('Kitchen Speaker'), SmartThermostat('Hall Thermostat', 550)];

for (var device in devices) {
  device.showInfo();
  device.turnOn();
  if (device is Adjustable) {
    (device as Adjustable).increase();
  }
  if (device is BatteryPowered) {
    (device as BatteryPowered).showBattery();
  }
  print('');
}
print('All devices processed.');

}
