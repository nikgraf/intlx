part of bot;

class EventHandle<T> implements Disposable {
  final async.StreamController<T> _controller;
  bool _disposed = false;

  EventHandle({void onCancel()}) :
    this._controller = new async.StreamController.broadcast(onCancel: onCancel, sync: true);

  void add(T event) => _controller.add(event);

  void dispose(){
    if(_disposed) {
      throw const DisposedError();
    }
    // Set disposed_ to true first, in case during the chain of disposal this
    // gets disposed recursively.
    this._disposed = true;
    _controller.close();
  }

  async.Stream get stream => _controller.stream;

  bool get hasListener => _controller.hasListener;

  bool get isDisposed => _disposed;
}
