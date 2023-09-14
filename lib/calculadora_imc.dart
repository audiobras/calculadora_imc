import 'classes/console_utils.dart';
import 'dart:convert';
import 'dart:io';
import 'classes/pessoa.dart';
import 'package:calculadora_imc/exception/nome_invalido_exception.dart';
import 'dart:math';
String mensagem1 = "";


void execute() { 
  print("Vamos calcular seu IMC?");
  String nome = ConsoleUtils.lerStringComTexto("Digite seu nome:");
  try {
    if (nome.trim() =="") {
throw NomeInvalidoException();
    } 
  }   catch (NomeInvalidoException) {
    nome = "Não informado";
    print(NomeInvalidoException);
    //FAZER SAIR
    exit(0);
  }
  
  var pessoa = Pessoa(nome);
  double? peso; 
   
   peso = ConsoleUtils.lerDoubleComtexto("Digite seu peso");

   while (peso == null) {

     peso = ConsoleUtils.lerDoubleComtexto("Digite seu peso em quilos, ex: 80");
      
    }
    
   double? altura; 
   altura = ConsoleUtils.lerDoubleComtexto("Digite sua altura");

    while (altura == null) {

     altura = ConsoleUtils.lerDoubleComtexto("Digite sua altura em metros, ex: 1.88");
      
    }

     double resultado () {
      return double.parse(pessoa.calcularIMC(peso, altura).toStringAsFixed(1));
     }


     if (resultado() < 16 ) { mensagem1 = "magreza grave.";  }
     else if (resultado() >= 16 && resultado() < 17) { mensagem1 = "magreza grave.";  }
     else if (resultado() >= 17 && resultado() < 18) { mensagem1 = "magreza leve.";  }
     else if (resultado() >= 18.5 && resultado() < 25) { mensagem1 = "que é saudável.";  }
      else if (resultado() >= 25 && resultado() < 30) { mensagem1 = "sobrepeso.";  }
     else if (resultado() >= 30 && resultado() < 35) { mensagem1 = "obesidade Grau I.";  }
     else if (resultado() >= 35 && resultado() < 40) { mensagem1 = "obesidade Grau II (severa).";  }
     else if (resultado() >= 40) { mensagem1 = "obesidade Grau III (mórbida).";  }
     else { mensagem1 = "erro no cálculo";  }

   print("${pessoa.getNome()}, seu IMC é ${resultado()} e indica $mensagem1");
   
}