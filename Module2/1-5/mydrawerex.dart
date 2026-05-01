import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget
{
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Tops Technologies"),centerTitle: true,),
        body:SingleChildScrollView(
          child: Center
            (
              child: Column(children: 
              [
                Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj"),
                Text("Tops Technologies"),
                Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj"),
                Text("Tops Technologies"),
                Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj"),
                Text("Tops Technologies"),

                
                
              ],),
            ),
        ),
        drawer: Drawer
          (
            child: ListView
              (
                children:
                [
                    UserAccountsDrawerHeader(accountName: Text("Tops"), accountEmail: Text("tops@gmail.com"),currentAccountPicture: Image.network("https://yt3.googleusercontent.com/MHTwB2uD9JCbsZYOhU5MCdZ-8V-f3WQKB0sDqtqmn9ZFBrJTrDaPGkDBKGUjBOR2LMRwj1C_-Q=s900-c-k-c0x00ffffff-no-rj"),/*currentAccountPictureSize: Size.square(20.00)*/),
                    ListTile(leading: Icon(Icons.home),title: Text("Home"),
                      onTap: ()
                    {
                      Navigator.pop(context);
                    },),
                    Divider(),
                    ListTile(leading: Icon(Icons.person),title: Text("About"), onTap: ()
                    {
                      Navigator.pop(context);
                    },),
                    Divider(),
                    ListTile(leading: Icon(Icons.contact_mail),title: Text("Contact"), onTap: ()
                    {
                      Navigator.pop(context);
                    },),


                ],
              ),
            
          ),
     floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      );
  }
}
