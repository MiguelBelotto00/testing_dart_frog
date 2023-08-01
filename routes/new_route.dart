import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  // final method = request.method.value; para saber el metodo: get,post,put,etc
  // final headers = context.request.headers; para saber los headers.
  final params = request.uri.queryParameters; // se trae los parametros.
  final name = params['name'] ?? 'there';

  final response = 'Hola $name, como te encuentras?\n';

  return Response(body: response);
}
