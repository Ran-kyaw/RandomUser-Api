import 'dart:convert';
import 'package:arndomuser/Models/user.dart';
import 'package:http/http.dart' as http;

Future<List<User>> fetchRandomUsers() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/?results=25'));
  
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final List<dynamic> results = data['results'];
    
    return results.map((userJson) => User.fromJson(userJson)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
