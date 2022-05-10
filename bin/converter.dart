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
      print('Обмен ${num.parse(sum!) * mapSale['Доллар']} USD на $sum сом');
    } else if (currency == 'EURO') {
      print('Обмен ${num.parse(sum!) * mapSale['Евро']} EURO на $sum сом');
    } else if (currency == 'RUB') {
      print('Обмен ${num.parse(sum!) * mapSale['Рубль']} RUB на $sum сом');
    } else if (currency == 'KZT') {
      print('Обмен ${num.parse(sum!) * mapSale['Тенге']} KZT на $sum сом');
    } else if (currency == 'JPY') {
      print('Обмен ${num.parse(sum!) * mapSale['Йена']} JPY на $sum сом');
    } else if (currency == 'AED') {
      print('Обмен ${num.parse(sum!) * mapSale['Дирхам']} AED на $sum сом');
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

  // if (first == '1' && second == 'USD') {
  //   print('Обмен ${num.parse(third!) * mapS['Доллар']} USD на $third сом');
  // } else if (first == '1' && second == 'EURO') {
  //   print('Обмен ${num.parse(third!) * mapS['Евро']} EURO на $third сом');
  // } else if (first == '1' && second == 'RUB') {
  //   print('Обмен ${num.parse(third!) * mapS['Рубль']} RUB на $third сом');
  // } else if (first == '1' && second == 'KZT') {
  //   print('Обмен ${num.parse(third!) * mapS['Тенге']} KZT на $third сом');
  // } else if (first == '1' && second == 'JPY') {
  //   print('Обмен ${num.parse(third!) * mapS['Йена']} JPY на $third сом');
  // } else if (first == '1' && second == 'AED') {
  //   print('Обмен ${num.parse(third!) * mapS['Дирхам']} AED на $third сом');
  // } else if (first == '2' && second == 'USD') {
  //   print('Обмен ${num.parse(third!) * mapB['Доллар']} сом на $third USD');
  // } else if (first == '2' && second == 'EURO') {
  //   print('Обмен ${num.parse(third!) * mapB['Евро']} сом на $third EURO');
  // } else if (first == '2' && second == 'RUB') {
  //   print('Обмен ${num.parse(third!) * mapB['Рубль']} сом на $third RUB');
  // } else if (first == '2' && second == 'KZT') {
  //   print('Обмен ${num.parse(third!) * mapB['Тенге']} сом на $third KZT');
  // } else if (first == '2' && second == 'JPY') {
  //   print('Обмен ${num.parse(third!) * mapB['Йена']} сом на $third JPY');
  // } else if (first == '2' && second == 'AED') {
  //   print('Обмен ${num.parse(third!) * mapB['Дирхам']} сом на $third AED');
  // } else {
  //   print('error');
  // }

  //!!ВАРИАНТ ЧЕРЕЗ ПЕРЕМЕННЫЕ!!

  // print('Курс на сегодня:');
  // var saleUSD = '84.50';
  // var saleEURO = '90.50';
  // var saleRUB = '1.15';
  // var saleKZT = '0.2';
  // var saleJPY = '0.63';
  // var saleAED = '22.35';

  // print('\nПродажа: \nUSD = $saleUSD\nEURO = $saleEURO\nRUB = $saleRUB\nKZT = $saleKZT\nJPY = $saleJPY\nAED = $saleAED');

  // var buyUSD = '83.50';
  // var buyEURO = '89.50';
  // var buyRUB = '1.02';
  // var buyKZT = '0.128';
  // var buyJPY = '1.58';
  // var buyAED = '0.045';

  // print('\nПокупка: \nUSD = $buyUSD\nEURO = $buyEURO\nRUB = $buyRUB\nKZT = $buyKZT\nJPY = $buyJPY\nAED = $buyAED');

  // print('\n1) Обмен другой вальты на сом.\n2) Обмен сома на другую валюту.');

  // print('Ввод: ');
  // var first = stdin.readLineSync();

  // if (first.toString() != '1' || first != '2') exit(404);

  // print('Выберете нужную валюту: \nUSD\nEURO\nRUB\nKZT\nJPY\nAED');

  // print('Ввод: ');
  // var second = stdin.readLineSync();

  // print('Укажите сумму:');

  // print('Ввод: ');
  // var third = stdin.readLineSync();

  // if (first == '1' && second == 'USD') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleUSD)} USD на $third сом');
  // } else if (first == '1' && second == 'EURO') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleEURO)} EURO на $third сом');
  // } else if (first == '1' && second == 'RUB') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleRUB)} RUB на $third сом');
  // } else if (first == '1' && second == 'KZT') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleKZT)} KZT на $third сом');
  // } else if (first == '1' && second == 'JPY') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleJPY)} JPY на $third сом');
  // } else if (first == '1' && second == 'AED') {
  //   print('Обмен ${num.parse(third!) * num.parse(saleAED)} AED на $third сом');
  // } else if (first == '2' && second == 'USD') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyUSD)} сом на $third USD');
  // } else if (first == '2' && second == 'EURO') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyEURO)} сом на $third EURO');
  // } else if (first == '2' && second == 'RUB') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyRUB)} сом на $third RUB');
  // } else if (first == '2' && second == 'KZT') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyKZT)} сом на $third KZT');
  // } else if (first == '2' && second == 'JPY') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyJPY)} сом на $third JPY');
  // } else if (first == '2' && second == 'AED') {
  //   print('Обмен ${num.parse(third!) * num.parse(buyAED)} сом на $third AED');
  // } else {
  //   print('error');
  // }
}
