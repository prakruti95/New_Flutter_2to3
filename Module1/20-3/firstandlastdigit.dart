import 'dart:io';

void main()
{
  int fdigit = 0;
  int ldigit = 0;

  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());//1234

  ldigit = num % 10;

  while(num>0)
  {
      if(num>9)
      {
        num = num~/10;//123//12//1
      }
      else
      {
          fdigit = num;
          num=num~/10;
      }
  }

  int ans = fdigit+ldigit;
  print("First and Last Digit sum : $ans");



}