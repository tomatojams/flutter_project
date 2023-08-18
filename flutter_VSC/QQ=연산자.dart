void main() {
  String? name;
  name ??= 'tomato';
  name = null;
  name ??= 'ANON';
  print(name);
}
