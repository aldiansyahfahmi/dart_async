Future<String> myState(String state) {
  if (state == 'error') {
    // return error
    return Future.error('Error State');
  } else if (state == 'success') {
    // return success
    return Future.value('Success State');
  } else {
    return Future.value('Other State');
  }
}

void main() {
  myState('success')
      .then((value) => print(value)) // dijalankan ketika success
      .catchError((error) => print(error)) // dijalankan ketika error
      .whenComplete(() => print(
          'All Done')); // dijalankan apapaun kondisinya (sama seperti finally pada try catch)

  print('Done');
}
