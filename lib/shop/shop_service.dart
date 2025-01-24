import 'package:http/http.dart' as http;

class homeservice {
  Future<http.Response> getproduct() async {
    String url = "https://fakestoreapi.com/products";
   http.Response response= await http.get(Uri.parse(url));
    return response;
    

  
  }
}
