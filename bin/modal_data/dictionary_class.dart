class Dictionary {
  final String word;
  final String meaning;
  final String sentence;

  Dictionary(
      {required this.word, required this.meaning, required this.sentence});

  static Dictionary fromMap(List<dynamic> json) {
    return Dictionary(
      word: json.first["word"],
      meaning: json.first["meanings"].first["definitions"].first["definition"],
      sentence: json.first["meanings"].first["definitions"].first["example"],
    );
  }

  @override
  String toString() => '''
      Word: $word
      
      
      Meaning : $meaning
      
      
     Sentence: $sentence
      ''';
}
