void main() {
  print('inicio del programa');

  httpGet('https://diego-perez.com/a').then((value) {
    print(value);
  }).catchError((err) {
    print('error: $err');
  });

  print('fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion https';

    //return 'Respuesta de la peticion http';
  });
}
