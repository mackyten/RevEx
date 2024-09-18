class ValidatorMessage {
  static String? type1(String fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your $fieldName";
    }
    return null;
  }
}
