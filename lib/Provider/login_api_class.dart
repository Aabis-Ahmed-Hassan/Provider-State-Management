import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class LoginApiClass with ChangeNotifier {
  bool _loading = false;

  bool get getLoading => _loading;

  void setLoading(bool value) {
    _loading = value;
  }



  void login(String email, String password) async {


    setLoading(true);



    try {
      var url = Uri.parse('https://reqres.in/api/login');

      var input = {
        'email': email,
        'password': password,
      };

      var response = await post(
        url,
        body: input,
      );

      if (response.statusCode == 200) {
        print('Login Successfully');
        setLoading(false);

      } else {

        print('Wrong username or password');
        setLoading(false);

      }
    } catch (e) {
      setLoading(false);

      print(e.toString());

    }

    notifyListeners();


  }
}
