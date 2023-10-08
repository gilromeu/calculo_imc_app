extension StringToDouble on String? {
  double get toDoubleChecked {
    if (this == null) {
      return 0.0;
    } else {
      try {
        return double.tryParse(this!) ?? 0.0;
      } catch (e) {
        return 0.0;
      }
    }
  }
}

extension Validations on String? {
  bool get isValid {
    return toDoubleChecked > 0.0;
  }
}
