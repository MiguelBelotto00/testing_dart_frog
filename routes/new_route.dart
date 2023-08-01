import 'package:dart_frog/dart_frog.dart';

Response onRequest(RequestContext context) {
  final request = context.request;
  final method = request.method.value;
  final headers = context.request.headers;

  final response =
      'utiliza el metodo: $method y tiene estas cabeceras $headers';

  return Response(body: response);
}
