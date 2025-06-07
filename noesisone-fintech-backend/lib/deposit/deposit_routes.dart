import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

final depositRouter = Router()
  ..post('/', (Request request) async {
    final payload = await request.readAsString();
    return Response.ok('Deposit received: \$payload');
  });