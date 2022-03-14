import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modal_data/dictionary_class.dart';

class DictionaryService {
  final _apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";

  Future<Dictionary> getData(String word) async {
    //  dictionary fetching and parsing data

    print("fetching response");
    final http.Response response =
        await http.get(Uri.parse("${_apiUrl}${word}"));
    print("response received");

    if (response.statusCode != 200) {
      throw Exception(
          'Something Went Wrong!, status code : ${response.statusCode}');
    }

    print("decoding response");
    // print(response.statusCode);
    // print(response.body);
    final Dictionary _dict = Dictionary.fromMap(jsonDecode(response.body));
    print("decoding complete");
    // print(_dict);
    return _dict;
  }
}
