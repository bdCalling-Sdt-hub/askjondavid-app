String obfuscateEmail(String email) {
  final parts = email.split('@');
  if (parts[0].length > 1) {
    final firstChar = parts[0][0];
    final remainingLength = parts[0].length - 1;
    final stars = '*' * remainingLength;
    return '$firstChar$stars@${parts[1]}';
  }
  return email;
}
