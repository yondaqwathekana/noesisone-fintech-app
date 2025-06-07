import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final withdrawalRouter = Router()
  ..post('/', (Request request) async {
    final payload = await request.readAsString();
    return Response.ok('Withdrawal received: \$payload');
  });