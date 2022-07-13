import 'dart:math';

class Cpf {
  /// Returns [true] if cpf is valid. Returns [false] otherwise.
  static bool validate(String cpf) {
    final reg = RegExp(r'^\d{3}\.?\d{3}\.?\d{3}\-?\d{2}$');
    if (!reg.hasMatch(cpf)) return false;

    cpf = cpf.replaceAll(RegExp(r'[-\.]'), '');
    final ln = cpf //
        .split('')
        .map((e) => int.parse(e))
        .toList();
    if (ln.every((e) => e == ln.first)) return false;

    var sum = 0;
    for (var i = 10; i >= 2; i--) {
      sum += ln[(i - 10).abs()] * i;
    }
    if (sum * 10 % 11 != ln[9]) return false;

    sum = 0;
    for (var i = 11; i >= 2; i--) {
      sum += ln[(i - 11).abs()] * i;
    }
    if (sum * 10 % 11 != ln[10]) return false;

    return true;
  }

  /// Generates a valid cpf.
  static String generate({bool withSymbols = false}) {
    var r = Random();

    List<int> list;

    do {
      list = List.generate(9, (_) => r.nextInt(10));

      var sum = 0;
      for (var i = 10; i >= 2; i--) {
        sum += list[(i - 10).abs()] * i;
      }
      list.add(sum * 10 % 11);

      sum = 0;
      for (var i = 11; i >= 2; i--) {
        sum += list[(i - 11).abs()] * i;
      }
      list.add(sum * 10 % 11);
    } while (!Cpf.validate(list.join()));

    String result;
    if (withSymbols) {
      result = (list.map((e) => e.toString()).toList()
        ..insert(9, '-')
        ..insert(6, '.')
        ..insert(3, '.'))
        .join();
    } else {
      result = list.join();
    }

    return result;
  }
}
