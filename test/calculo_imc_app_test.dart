import 'dart:math';

import 'package:calculo_imc_app/util/functions/calculo_imc_app.dart';
import 'package:calculo_imc_app/util/functions/classification.dart';
import 'package:calculo_imc_app/util/functions/extensios_util.dart';
import 'package:test/test.dart';

void main() {
  test('calculateIMC', () {
    expect(calculateIMC(74, 1.74), 24.44);
  });

  test('toDoubleChecked', () {
    expect('1.74'.toDoubleChecked, 1.74);
  });

  test('toDoubleChecked invalid', () {
    expect('asdfasd'.toDoubleChecked, 0.0);
  });

  test('isValid height', () {
    expect('1.74'.isValid, true);
  });

  test('isValid weight', () {
    expect('80.1'.isValid, true);
  });

  test('is invalid height', () {
    expect('asdfds'.isValid, false);
  });

  test('is invalid weight', () {
    expect('asdfsd'.isValid, false);
  });

  test('get classification', () {
    expect(getClassification(24), 'Normal');
  });
}
