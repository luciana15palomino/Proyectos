import 'dart:ffi';
import 'dart:io';
import 'dart:math';
void main(List<String> arguments) {

  print("Hola mundo:");
  print("Ingrese el lado de un cuadrado:");


  var input = stdin.readLineSync();

  double lado = double.parse(input!);

  double area = lado * lado;
  double perimetro = lado * 4;

  print('El área es: $area');
  print('El perímetro es: $perimetro');

  print("Ingrese el radio del cilindro:");
  var radioString = stdin.readLineSync();
  double radio = double.parse(radioString!);

  print("Ingrese la altura del cilindro:");
  var alturaString = stdin.readLineSync();
  double altura = double.parse(radioString!);

  double areaBase = pi * radio * radio;
  double areaBases = areaBase *2;
  double perimetroBase = pi * radio * 2;
  double areaLateral = perimetroBase * altura;

  double areaTotal = areaBases + areaLateral;
  print('el area Total es: $areaTotal');

  double volumen = pi * radio * radio * altura;
  print('El volumen es: $volumen');


  //tercer ejercicio
  print("Ingrese el dinero a dividir");
  var Stringmonto = stdin.readLineSync();
  int monto = int.parse(radioString!);

  double Josueb = monto * 0.23;
  double Danielb = monto * 0.25;
  double Tamarb = Josueb * 0.85;
  double Calebb = 0.23 * (Josueb + Danielb);
  double Davidb = monto - (Tamarb + Josueb + Calebb + Danielb);
  double Josue = Josueb * 10;
  double Daniel = Danielb * 10;
  double Tamar = Tamarb * 10;
  double Caleb = Calebb * 10;
  double David = Davidb * 10;

  // Imprime los resultados
  print('El monto a recibir de Tamar es \$${Tamar.toStringAsFixed(2)}');
  print('El monto a recibir de Daniel es \$${Daniel.toStringAsFixed(2)}');
  print('El monto a recibir de David es \$${David.toStringAsFixed(2)}');
  print('El monto a recibir de Caleb es \$${Caleb.toStringAsFixed(2)}');
  print('El monto a recibir de Josue es \$${Josue.toStringAsFixed(2)}');

}
