Future<String> sayHello(String name) {
  return Future.value('Hello $name');
}

void main() {
  sayHello('Aldi').then((value) => print(value));

  print('Done');
}
