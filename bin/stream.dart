import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return '$i : Genap';
    } else {
      return '$i : Ganjil';
    }
  });
}

void main() {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event); // tergantikan oleh onData
  });

  // jika listen sudah dipanggil sebelumnya, lalu memanggil onData, maka listen pertama akan tergantikan oleh onData
  listen.onData((data) {
    print('Stream Subscription : $data');
  });

  listen.onDone(() {
    print('Stream Subscription Done');
  });

  // ini akan error
  // tidak bisa listen 2x di stream yang sama
  // StreamSubscription<String> listen2 = flow.listen((event) {
  //   print(event);
  // });
}
