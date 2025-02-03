import 'package:http/http.dart' as http;

class Homeservice {
  Future<http.Response> getproduct() async {
    String url = "https://fakestoreapi.com/products";
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }

  Future<http.Response> getcategories() async {
    String url = "https://fakestoreapi.com/products/categories";
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }

  Future<http.Response> specificationCategories(String categories) async {
    String url = "https://fakestoreapi.com/products/category/${categories}";
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}
