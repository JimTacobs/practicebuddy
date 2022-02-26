String? requiredField(String? val) {
  if (val == null || val.isEmpty) {
    return 'Required';
  }
  return null;
}