import 'dart:convert';
import 'package:http/http.dart' as http;

const String apiUrl = 'http://172.16.120.193:5000';

Future <bool> loginUser(String email, String password) async{
  var response = await http.put(Uri.parse(apiUrl+'/user/login'),
      body: {'email': email, 'password': password});
  if(response.statusCode == 200)
    {
      var jsonResponse = json.decode(response.body);
      if(jsonResponse['valid'] == 'true') {
        return true;
      }
      else
        {
          return false;
        }
    }
  else
    {
      return false;
    }
}

Future <bool> registerUser(String email, String password, String username) async{
  var response = await http.put(Uri.parse(apiUrl+'/user/register'),
      body: {'email': email, 'password': password, 'username':username});

  if(response.statusCode == 200)
  {
    var jsonResponse = json.decode(response.body);
    if(jsonResponse['valid'] == 'true') {
      return true;
    }
    else
    {
      return false;
    }
  }
  else
  {
    return false;
  }
}