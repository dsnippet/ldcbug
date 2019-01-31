import thud;
import waldo;
class grault: bar {
  void func() { func2; }
  void func1() {
    assert(false, "func1 was never called");
  }
  void func2() { }
}
