import 'dart:io';

void main()
{
      int row,col;
      for(row=1;row<=5;row++)
      {
          for(col=1;col<=row;col++)
          {
             // print("[$row][$col]]");
              //print("*");
             //stdout.write("*");
            //stdout.write(row);
            stdout.write(col);
          }
          print("");
      }
}