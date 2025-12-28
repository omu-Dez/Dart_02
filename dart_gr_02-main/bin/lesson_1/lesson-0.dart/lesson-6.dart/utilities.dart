class Converter {
  static double celciusToFahrenheit(double celsius) {
    // static - элемент самого класса
    return (celsius * 9 / 5) + 32;
  }

  static double convertKgsToUsd(double amount, double rate) {
    return amount / rate;
  }
}