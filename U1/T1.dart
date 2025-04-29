import 'dart:io';

void main() {
  print('--- Pago de consumo de energía eléctrica ---');
  stdout.write('Ingrese el consumo en kilowatts (KW): ');
  double kwConsumidos = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el costo por kilowatt (KW): ');
  double costoPorKw = double.parse(stdin.readLineSync()!);
  
  double pagoTotal = kwConsumidos * costoPorKw;
  print('El pago total por el consumo es: \$${pagoTotal.toStringAsFixed(2)}\n');

  // Segundo ejercicio: precio con descuento e IVA
  print('--- Cálculo de precio con descuento e IVA ---');
  stdout.write('Ingrese el precio del artículo: ');
  double precioOriginal = double.parse(stdin.readLineSync()!);
  
  double descuento = precioOriginal * 0.20;
  double precioConDescuento = precioOriginal - descuento;
  
  double iva = precioConDescuento * 0.15;
  double precioFinal = precioConDescuento + iva;
  
  print('Precio con descuento (20%): \$${precioConDescuento.toStringAsFixed(2)}');
  print('Precio final con IVA (15%): \$${precioFinal.toStringAsFixed(2)}');
}
