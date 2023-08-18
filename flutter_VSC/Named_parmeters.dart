String sayHello(
        {required String name, required int age, String country = 'brazil'}) =>
    'Hello $name, you are $age years old from $country';

void main() {
  print(sayHello(age: 12, name: 'tomato'));
}
