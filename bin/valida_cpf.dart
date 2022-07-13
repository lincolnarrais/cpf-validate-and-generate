import 'package:valida_cpf/src/cpf.dart';

void main(List<String> arguments) {
  final cpf = Cpf.generate(withSymbols: true);
  final isValid = Cpf.validate(cpf);
  print('$cpf ${isValid ? 'is' : 'is not'} valid.');
}
