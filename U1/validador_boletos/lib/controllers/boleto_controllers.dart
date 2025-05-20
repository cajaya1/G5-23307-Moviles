class BoletoController {
  bool validarBoleto(int numero) {
    //convertir el numero a cadena con 5 digitos
    String numeroStr = numero.toString().padLeft(5, '0');// si tiene menos de 5 se agrega a la izquierda
    //extraiga los digitos por posicion
    int primero = int.parse(numeroStr[0]);
    int segundo = int.parse(numeroStr[1]);
    int tercero = int.parse(numeroStr[2]);
    int cuarto = int.parse(numeroStr[3]);
    int quinto = int.parse(numeroStr[4]);

    //combinaciones numericas    
    //condiciones
    //1. los ultimos digitos debe ser divisibles para el primer digito
    //2. el doble de los primeros debe ser menos que el cuadrado de los ultimos dos
    //3. 
    // Obtener los dos primeros dígitos
    int dosPrimeros = primero * 10 + segundo;
    
    // Obtener los dos últimos dígitos
    int dosUltimos = cuarto * 10 + quinto;
    
    // Primera condición: Los dos últimos dígitos deben ser divisibles por el primer dígito
    bool condicion1 = (dosUltimos % primero) == 0;
    
    // Segunda condición: El doble de los dos primeros dígitos debe ser menor que el cuadrado de los dos últimos
    bool condicion2 = (2 * dosPrimeros) < (dosUltimos * dosUltimos);
    
    // Ambas condiciones deben cumplirse para que el boleto sea válido
    return condicion1 && condicion2;
  }
}