Future<String> name() {
  return Future.value('Aldiansyah Fahmi');
}

void main() {
  // ini adalah future transform
  // tipe data value dapat diubah
  name()
      .then((value) => value.split(' ')) // Future<List<String>>
      .then((value) => value.reversed) // Future<Iterable<String>>
      .then((value) =>
          value.map((e) => e.toUpperCase())) // Future<Iterable<String>>
      .then((value) => print(value)); // print value

  print('Done');
}
