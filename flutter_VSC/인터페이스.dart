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

class GirlGroup implements Idol {
  // 모든기능 재정의
  final String name;
  final int membersCount;

  GirlGroup(
    this.name,
    this.membersCount,
  );

  void sayName() {
    print('저는 여자 아이돌 ${this.name}입니다');
  }

  void sayMembersCount() {
    print('${this.name}멤버는 ${this.membersCount}명입니다.');
  }
}

void main() {
  GirlGroup blackpink = GirlGroup('블랙핑크', 4);
  blackpink.sayName();
  blackpink.sayMembersCount();
}
