import '../models/user.dart';

class UserService {
  final List<User> _users = [];

  void registerUser(User user) {
    _users.add(user);
    _sendVerificationEmail(user.email);
  }

  List<User> getAllUsers() => _users;

  void _sendVerificationEmail(String email) {
    print('📧 Sending verification email to \$email with code: 123456');
    // In production, use real SMTP service.
  }
}