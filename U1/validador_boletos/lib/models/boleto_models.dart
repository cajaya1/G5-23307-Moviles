import 'package:app_disenio/controllers/boleto_controllers.dart';

class Boleto {
  final int numero;
  final bool esValido;
  final String mensaje;

  Boleto({
    required this.numero,
    required this.esValido,
    required this.mensaje,
  });

  factory Boleto.fromNumero(int numero) {
    final controller = BoletoController();
    final esValido = controller.validarBoleto(numero);
    
    return Boleto(
      numero: numero,
      esValido: esValido,
      mensaje: esValido 
          ? '¡Boleto válido! Disfruta del concierto.' 
          : 'Boleto inválido. Por favor verifica el número.',
    );
  }
}
