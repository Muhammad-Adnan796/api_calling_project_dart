import 'dart:io';

import 'modal_data/dictionary_class.dart';
import 'services/dictry_services.dart';

void main(List<String> arguments) async {
 if(arguments.isEmpty){
   print("Missing arguments: Syntax => dart run api_project <word>");
   exit(1);
 }
 final DictionaryService _dictionaryserv = DictionaryService();
 Dictionary response = await _dictionaryserv.getData(arguments.first);

 print(response);
}
