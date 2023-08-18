String sayHello(String name, int age, [String? country = 'brazil']) =>
    'Hello $name, you are $age years old from $country';

void main() {
  print(sayHello('tomato', 19));
}
