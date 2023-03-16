import 'package:shelf_router/shelf_router.dart';
import 'home_controller.dart';

class HomeRouters {
  Router get router {
    final router = Router();
    final controller = HomeController();

    // get request to "/home"
    router.get('/', controller.index);

    // get request to "/home/<param>?query=????"
    router.get('/<param>', controller.indexWithParams);

    // post request to "/home"
    router.post('/', controller.postWithBody);

    return router;
  }
}
