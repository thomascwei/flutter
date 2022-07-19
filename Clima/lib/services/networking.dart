import 'dart:convert';
import 'package:Clima/screens/loading_screen.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url);

  late String url;

  Future getData() async {
    // var url = Uri.parse(
    //     'https://api.openweathermap.org/data/2.5/weather?appid=1c624e29950b3f99917e15eb566b6fd3&lat=24.79&lon=121.01');
    // var response = await http.get(url);
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
