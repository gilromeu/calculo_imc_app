import 'dart:convert';
import 'dart:io';

import 'package:calculo_imc_app/util/functions/calculo_imc_app.dart';
import 'package:calculo_imc_app/util/functions/classification.dart';
import 'package:calculo_imc_app/util/functions/extensios_util.dart';

import 'pessoa.dart';

void main(List<String> arguments) {
  String? heightInput;
  String? weightInput;

  print('Digite o seu nome: ');
  var nameInput = stdin.readLineSync(encoding: utf8);

  print('Digite a Altura (Ex: 1.65): ');
  do {
    heightInput = stdin.readLineSync(encoding: utf8);
    if (!heightInput.isValid) {
      print('Você digitou uma Altura inválida');
      print('Digite a Altura (Ex: 1.65): ');
    }
  } while (!heightInput.isValid);

  print('Digite o Peso (Ex: 62.5): ');
  do {
    weightInput = stdin.readLineSync(encoding: utf8);
    if (!weightInput.isValid) {
      print('Você digitou o Peso inválida');
      print('Digite o Peso (Ex: 62.5): ');
    }
  } while (!weightInput.isValid);

  Pessoa pessoa = Pessoa(nameInput.toString(), weightInput.toDoubleChecked,
      heightInput.toDoubleChecked);

  var imc = calculateIMC(pessoa.peso, pessoa.altura);
  var classification = getClassification(imc);
  print('O seu IMC é $imc e você está na classificação $classification');
}
