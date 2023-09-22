class AuthUserTypeException implements Exception {
  AuthUserTypeException({
    this.code = 'wrong-user-type',
    this.message = 'User associated with phone is '
        'already registered with other user type.',
  });

  final String? code;
  final String? message;

  @override
  String toString() => '[$code]: $message';
}
