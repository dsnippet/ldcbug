import grault;
class wrapper(T) {
  fred!T frop;

  this() {
    frop = new fred!T;
  }
}

abstract class fred_base{
  grault get_frop();
}

class fred(T): fred_base {
  T _grault_instance;
  override T get_frop() {
    return _grault_instance;
  }
  void func() {
    _grault_instance = new T;
    _grault_instance.func(this);
  }
}
