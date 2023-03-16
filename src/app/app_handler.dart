import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';

import 'home/home_routers.dart';

class AppHandler {
  // Define our getter for our handler
  Handler get handler {
    final router = Router();

    // main route
    router.get('/', (Request request) {
      return Response.ok('Hello World');
    });

    // Mount Other Controllers Here
    router.mount('/home', HomeRouters().router);

    // You can catch all verbs and use a URL-parameter with a regular expression
    // that matches everything to catch app.
    router.all('/<ignored|.*>', (Request request) {
      return Response.notFound('Page not found');
    });

    return router;
  }
}
