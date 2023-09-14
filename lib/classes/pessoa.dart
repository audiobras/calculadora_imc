class Pessoa {
String _nome = "";
double _peso = 0.0;
double _altura = 0.0;


Pessoa (String nome) {
_nome = nome;

}

void setNome(String nome) {
  _nome = nome;
}

String getNome() {
  return _nome;
}

void setPeso(double peso) {
  _peso = peso;
}

double getPeso() {
  return _peso ;
}

void setAltura(double altura) {
  _altura = altura;
}

double getAltura() {
  return _altura ;
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





}