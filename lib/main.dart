import 'dart:async';

void main() {
  final StreamController<int> streamController = StreamController<int>();
  final StreamTransformer<int, int> doubleTransformer =
      StreamTransformer<int, int>.fromHandlers(handleData: (int value, EventSink<int> sink) {
    sink.add(value * 2);
  });
  final Stream<int> doubledStream = streamController.stream.transform(doubleTransformer);

  doubledStream.listen((int doubledValue) {
    print('Doubled Value: $doubledValue');
  });

  streamController.add(1);
  streamController.add(2);
  streamController.add(3);
}
