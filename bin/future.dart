Future<void> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    print('Hello $name');
  });
}

void main() {
  sayHello('Aldi');
  print('Done');
}
