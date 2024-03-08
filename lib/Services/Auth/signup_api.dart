import '../../Customs/routes/imports.dart';

class SignupApi {
  static const String baseUrl = ApiURL.SIGNUP;

  Future<UserInfo> signup(
      String name, String email, String phoneNumber, String password) async {
    try {
      final Uri url = Uri.parse(baseUrl);

      // Prepare the request body
      final Map<String, String> body = {
        'name': name,
        'email': email,
        'phone': phoneNumber,
        'password': password,
      };
      final Response response = await post(url, body: body);
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final UserInfo userInfo = UserInfo.fromJson(data);
        return userInfo;
      } else {
        throw Exception('Login Failed. ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Internal Server Error');
    }
  }
}