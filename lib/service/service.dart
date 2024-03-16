import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> callApi(String link) async {
  try {
    final response = await http.get(Uri.parse(link));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
    return null;
  }
}
