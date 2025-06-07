import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../models/user.dart';
import '../services/user_service.dart';

final UserService _userService = UserService();

/// User-related routes for the NoesisOne Fintech backend.
final userRouter = Router()
  ..post('/register', (Request request) async {
    final payload = await request.readAsString();
    final data = json.decode(payload);

    try {
      final user = User(
        firstName: data['firstName'],
        lastName: data['lastName'],
        email: data['email'],
        idOrPassport: data['idOrPassport'],
        phoneNumber: data['phoneNumber'],
        countryCode: data['countryCode'],
        age: data['age'],
        gender: data['gender'],
      );

      _userService.registerUser(user);

      return Response.ok(json.encode({
        'status': 'success',
        'message': 'User registered successfully. Verification email sent.'
      }), headers: {'Content-Type': 'application/json'});
    } catch (e) {
      return Response.internalServerError(body: json.encode({
        'status': 'error',
        'message': 'Failed to register user: \$e'
      }), headers: {'Content-Type': 'application/json'});
    }
  });