void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://diego-perez.com/a');
    print('exito: $value');

    //Reaccion basado en una Exception
  } on Exception catch (err) {
    print('Tenemos una exception $err');

    //Reaccion basado en un throw
  } catch (err) {
    print('OOPS!! algo terrible paso: $err');

    //finalmente ejecuta
  } finally {
    print('Fin del try y catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el URL');

  //throw 'Error en la peiticon';

  //return 'tenemos un valor de la peticion';

  // return Future.delayed(const Duration(seconds: 1), () {
  // throw 'Error en la peticion https';

  //return 'Respuesta de la peticion http';
  //});
}
