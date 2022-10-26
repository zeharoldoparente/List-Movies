import 'package:http/http.dart' as http;

const baseUrl = "https://api-content.ingresso.com/v0/sessions/city/28/theater/%20/partnership/%20";

class API {
  static Future getMovies() async {
    return await http.get(baseUrl);
  }
}