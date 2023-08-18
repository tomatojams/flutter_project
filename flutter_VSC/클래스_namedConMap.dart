class Idol {
  final String name;
  final int membersCount;

  Idol(String name, int membersCount)
      : this.name = name,
        this.membersCount = membersCount;

  Idol.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.membersCount = map['membersCount'];

  void sayName() {
    print('나는 ${this.name}입니다. ${this.membersCount}명입니다.');
  }
}

void main() {
  Idol blakpink = Idol('블랙핑크', 4);
  blakpink.sayName();

  Idol bts = Idol.fromMap({
    'name': 'BTS',
    'membersCount': 7,
  });
  bts.sayName();
}
