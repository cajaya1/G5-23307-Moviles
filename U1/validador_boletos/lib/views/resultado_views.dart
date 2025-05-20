import 'package:flutter/material.dart';
import 'package:app_disenio/controllers/boleto_controllers.dart';
import 'package:app_disenio/models/boleto_models.dart';

class ResultadoView extends StatelessWidget {
  const ResultadoView({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener el argumento pasado desde la pantalla anterior
    final int numeroBoleto = ModalRoute.of(context)!.settings.arguments as int;
    
    // Crear el boleto con la validación
    final boleto = Boleto.fromNumero(numeroBoleto);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado de Validación'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono grande que indica si es válido o no
              Icon(
                boleto.esValido ? Icons.check_circle : Icons.cancel,
                color: boleto.esValido ? Colors.green : Colors.red,
                size: 100,
              ),
              const SizedBox(height: 20),
              // Número de boleto
              Text(
                'Boleto: ${boleto.numero.toString().padLeft(5, '0')}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Mensaje de validación
              Text(
                boleto.mensaje,
                style: TextStyle(
                  fontSize: 20,
                  color: boleto.esValido ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Botón para volver
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Volver',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}