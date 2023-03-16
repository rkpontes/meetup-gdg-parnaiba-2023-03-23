import 'dart:async';
import 'dart:convert';

import 'package:shelf/shelf.dart';

class HomeController {
  FutureOr index(Request req) {
    return Response.ok("GET in Home Controller");
  }

  FutureOr indexWithParams(Request req, String param) {
    print(req.url.queryParameters["query"]);
    return Response.ok(param);
  }

  FutureOr postWithBody(Request req) async {
    final String body = await req.readAsString();
    Map<String, dynamic> bodyMap = jsonDecode(body);
    print(bodyMap);
    return Response.ok("POST in Home Controller");
  }
}
