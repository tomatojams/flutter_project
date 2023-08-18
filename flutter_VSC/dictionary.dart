typedef Dic = Map<String?, String?>;
typedef bulk = List<Dic>;

class Dictionary {
  late Dic dict = {};
  Dictionary();

  add({required String word, required String meaning}) {
    dict[word] = meaning;
  }

  get({required String word}) {
    return dict[word];
  }

  delete({required String word}) {
    dict.remove(word);
  }

  update({required String word, required String meaning}) {
    dict[word] = meaning;
  }

  shawAll() {
    print('사전목록:');
    dict.forEach((key, value) {
      print('${key} : ${value}');
    });
    print('\n');
  }

  count() {
    return dict.length;
  }

  upsert({required String word, required String meaning}) {
    dict[word] = meaning;
  }

  exist({required String word}) {
    if (dict.containsKey(word)) {
      print('해당키가 존재해요.\n');
    } else {
      print('해당키가 없습니다.\n');
    }
  }

  bulkAdd(bulk listOfDict) {
    listOfDict.forEach((dictformat) {
      dict[dictformat['term']] = dictformat['definition'];
    });
  }

  bulkDelete(List<String> bulk_dic) {
    bulk_dic.forEach((key) => dict.remove(key));
  }
}

void main() {
  var dict1 = Dictionary();
  dict1.add(word: 'school', meaning: 'another home');
  dict1.add(word: 'nice', meaning: 'very good');
  dict1.add(word: 'girl', meaning: 'fantasy');
  dict1.shawAll();

  print('단어의 뜻은 ${dict1.get(word: 'girl')}입니다.\n');

  dict1.delete(word: 'school');
  dict1.shawAll();
  dict1.update(word: 'girl', meaning: 'fake dream');
  dict1.shawAll();

  print('사전에 ${dict1.count()}개의 단어가있습니다.\n');
  dict1.upsert(word: 'neat', meaning: 'nice place');
  dict1.shawAll();
  dict1.exist(word: 'nam');
  dict1.bulkAdd([
    {'term': 'fantasy', 'definition': 'your fake fantasy'},
    {'term': 'some', 'definition': 'start of love'}
  ]);
  dict1.shawAll();
  List<String> keyToremove = ['nice', 'neat'];
  dict1.bulkDelete(keyToremove);
  dict1.shawAll();
}
