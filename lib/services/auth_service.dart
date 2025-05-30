class AuthService {
  /// 模擬登入，依照 email 判斷角色並回傳 'student' 或 'trainer'。
  Future<String?> signIn(String email, String password) async {
    // TODO: implement authentication logic
    await Future.delayed(const Duration(milliseconds: 300));
    if (email.contains('trainer')) {
      return 'trainer';
    } else if (email.contains('student')) {
      return 'student';
    }
    return null;
  }
}
