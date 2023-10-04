void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://diego-perez.com/a');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la peiticon';
  //return 'tenemos un valor de la peticion';

  // return Future.delayed(const Duration(seconds: 1), () {
  // throw 'Error en la peticion https';

  //return 'Respuesta de la peticion http';
  //});
}
