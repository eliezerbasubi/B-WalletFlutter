extension StringCasingExtension on String {
  String toCapitalCase() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
}