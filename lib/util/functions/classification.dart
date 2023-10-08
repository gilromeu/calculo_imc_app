String getClassification(double imc) {
  switch (imc) {
    case <= 18.5:
      return 'Magreza';

    case > 18.5 && <= 24.9:
      return 'Normal';

    case >= 25 && <= 29.9:
      return 'Sobrepeso';

    case >= 30 && <= 34.9:
      return 'Obesidade grau I';

    case >= 35 && <= 39.9:
      return 'Obesidade grau II';

    case >= 40:
      return 'Obesidade grau III';

    default:
      return '';
  }
}
