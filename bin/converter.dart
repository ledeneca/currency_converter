import 'dart:io';

void main(List<String> arguments) {
  const Map mapSale = {
    'Доллар': 84.50,
    'Евро': 90.50,
    'Рубль': 1.15,
    'Тенге': 0.2,
    'Йена': 0.63,
    'Дирхам': 22.35,
  };

  print('Курс продажи валюты на сегодня:\n');
  mapSale.forEach((key, value) {
    print('$key : $value сом');
  });

  const Map mapBuy = {
    'Доллар': 83.50,
    'Евро': 89.50,
    'Рубль': 1.02,
    'Тенге': 0.128,
    'Йена': 1.58,
    'Дирхам': 0.045,
  };

  print('\nКурс покупки валюты на сегодня:\n');
  mapBuy.forEach((key, value) {
    print('$value сом за 1 $key');
  });

  print(
      '\nВыберите:\n1) Обмен другой вальты на сом.\n2) Обмен сома на другую валюту.');
  print('Ввод: ');
  var typeOfOperation = stdin.readLineSync();

  print('Выберете нужную валюту: \nUSD\nEURO\nRUB\nKZT\nJPY\nAED');
  print('Ввод: ');
  var currency = stdin.readLineSync();

  print('Укажите сумму:');
  print('Ввод: ');
  var sum = stdin.readLineSync();

  if (typeOfOperation == '1') {
    if (currency == 'USD') {
      print('Обмен ${num.parse(sum!) * mapSale['Доллар']} сом на $sum USD');
    } else if (currency == 'EURO') {
      print('Обмен ${num.parse(sum!) * mapSale['Евро']} сом на $sum EURO');
    } else if (currency == 'RUB') {
      print('Обмен ${num.parse(sum!) * mapSale['Рубль']} сом на $sum RUB');
    } else if (currency == 'KZT') {
      print('Обмен ${num.parse(sum!) * mapSale['Тенге']} сом на $sum KZT');
    } else if (currency == 'JPY') {
      print('Обмен ${num.parse(sum!) * mapSale['Йена']} сом на $sum JPY');
    } else if (currency == 'AED') {
      print('Обмен ${num.parse(sum!) * mapSale['Дирхам']} сом на $sum AED');
    }
  } else if (typeOfOperation == '2') {
    if (currency == 'USD') {
      print('Обмен ${num.parse(sum!) * mapBuy['Доллар']} USD на $sum сом');
    } else if (currency == 'EURO') {
      print('Обмен ${num.parse(sum!) * mapBuy['Евро']} EURO на $sum сом');
    } else if (currency == 'RUB') {
      print('Обмен ${num.parse(sum!) * mapBuy['Рубль']} RUB на $sum сом');
    } else if (currency == 'KZT') {
      print('Обмен ${num.parse(sum!) * mapBuy['Тенге']} KZT на $sum сом');
    } else if (currency == 'JPY') {
      print('Обмен ${num.parse(sum!) * mapBuy['Йена']} JPY на $sum сом');
    } else if (currency == 'AED') {
      print('Обмен ${num.parse(sum!) * mapBuy['Дирхам']} AED на $sum сом');
    }
  } else {
    print('Error');
  }
}
