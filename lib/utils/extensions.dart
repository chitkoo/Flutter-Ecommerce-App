extension StringExtension on String {
  String get capitalizeString {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}
