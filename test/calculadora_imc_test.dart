
import 'package:test/test.dart';


void main() {
  test('Testar calculo do imc', () {
    double peso = 50.0;
    double altura = 1.00;
    expect(calcularIMC(peso,altura), equals(50.0));
  });
}

double calcularIMC(getPeso, getAltura) {
  if (getPeso <= 0) {
    throw ArgumentError("O peso não pode ser zero");
  }
    if (getAltura <= 0) {
    throw ArgumentError("A altrua não pode ser zero");
  }
 
return getPeso / (getAltura * getAltura);

}


