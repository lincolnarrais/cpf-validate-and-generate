import 'package:valida_cpf/src/cpf.dart';
import 'package:test/test.dart';

void main() {
  test('cpf válido com símbolos', () {
    expect(Cpf.validate('529.982.247-25'), true);
  });

  test('cpf válido sem símbolos', () {
    expect(Cpf.validate('52998224725'), true);
  });

  test('cpf inválido com símbolos', () {
    expect(Cpf.validate('012.345.678-90'), false);
  });

  test('cpf inválido sem símbolos', () {
    expect(Cpf.validate('01234567890'), false);
  });

  test('cpf 111.111.111-11 inválido', () {
    expect(Cpf.validate('111.111.111-11'), false);
  });

  test('cpf 222.222.222-22 inválido', () {
    expect(Cpf.validate('222.222.222-22'), false);
  });

  test('cpf 333.333.333-33 inválido', () {
    expect(Cpf.validate('333.333.333-33'), false);
  });

  test('cpf 444.444.444-44 inválido', () {
    expect(Cpf.validate('444.444.444-44'), false);
  });

  test('cpf 555.555.555-55 inválido', () {
    expect(Cpf.validate('555.555.555-55'), false);
  });

  test('cpf 666.666.666-66 inválido', () {
    expect(Cpf.validate('666.666.666-66'), false);
  });

  test('cpf 777.777.777-77 inválido', () {
    expect(Cpf.validate('777.777.777-77'), false);
  });

  test('cpf 888.888.888-88 inválido', () {
    expect(Cpf.validate('888.888.888-88'), false);
  });

  test('cpf 999.999.999-99 inválido', () {
    expect(Cpf.validate('999.999.999-99'), false);
  });
}
