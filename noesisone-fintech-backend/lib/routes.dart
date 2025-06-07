import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'deposit/deposit_routes.dart';
import 'withdrawal/withdrawal_routes.dart';
import 'users/user_routes.dart';

Router get router {
  final router = Router();

  router.mount('/deposit/', depositRouter);
  router.mount('/withdrawal/', withdrawalRouter);
  router.mount('/users/', userRouter);

  router.get('/health', (Request request) {
    return Response.ok('Backend is running 🚀');
  });

  return router;
}