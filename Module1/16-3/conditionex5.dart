import 'dart:io';

void main()
{
    String uname = "tops";
    String pass = "1234";

    print("Enter Your Username");
    var un = stdin.readLineSync().toString();
    print("Enter Your Password");
    var ps = stdin.readLineSync().toString();

    if(un==uname)
    {
        print("username is correct");
    }
    if(ps==pass)
    {
      print("password is correct");
    }


}