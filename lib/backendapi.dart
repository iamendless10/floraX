import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
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

Future<bool> detectPlant(String imagePath) async {
  var imageFile = File(imagePath);
  var stream = http.ByteStream(imageFile.openRead());
  var length = await imageFile.length();
  var uri = Uri.parse(apiUrl+'/plant/detect');
  var request = http.MultipartRequest('POST', uri);
  var multipartFile = http.MultipartFile('image', stream, length, filename: path.basename(imageFile.path));
  request.files.add(multipartFile);
  var response = await request.send();
  if (response.statusCode == 200) {
    var jsonResponse = json.decode(await response.stream.bytesToString());
    if(jsonResponse['valid'] == 'true') {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}