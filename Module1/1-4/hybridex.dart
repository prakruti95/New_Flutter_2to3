class A
{
    void a()
    {
      print("A called");
    }
}
class B extends A
{
  void b()
  {
    print("B called");
  }
}
class C extends A
{
  void c()
  {
    print("C called");
  }
}
class D implements B,C
{
  void d()
  {
    print("D1 called");
  }

  @override
  void a() {
    print("A1");
  }

  @override
  void b() {
    print("B1");
  }

  @override
  void c() {
    print("C1");
  }
}

void main()
{
  var d = D();
  d.a();
  d.b();
  d.c();
  d.d();
}