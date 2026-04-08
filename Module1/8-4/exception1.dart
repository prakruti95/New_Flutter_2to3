//Exception - Errors

//Keywords:try,catch,throw,throws,finally

void main()
{
    int geek = 10;
    try
    {
      var geek2 = geek ~/ 10;
      print(geek2);
    }
    catch(e)
    {
      //throw XYZ();
      print(e);
    }
    finally
    {
      print("Executed");
    }
}