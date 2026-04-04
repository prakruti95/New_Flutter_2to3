class MyColor
{
  String color="black";
}
class MYcolor2 extends MyColor
{
  String color="white";

  display()
  {
   // print(color);
    print(super.color);
  }
}
void main()
{
  //print(MyColor().color);
  MYcolor2 m = MYcolor2();
  m.display();
}