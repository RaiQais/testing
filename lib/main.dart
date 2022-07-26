import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "Sonnet",
      home: Rai(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    ),
  );
}

class Rai extends StatelessWidget {
  const Rai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // for background color
      appBar: AppBar(
        title: Text("Eecellent Layout"),
      ),
      body: Center(
          child: Card(
        child: Column(
          children: [Image.asset("assets/images/bak.jpg")],
        ),
      )),
      // it show side Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(
            //   child: Text(
            //     "HI I'm Drawer",
            //     style: TextStyle(color: Colors.white),
            //   ),
            //   decoration: BoxDecoration(color: Colors.red),
            // ),

            UserAccountsDrawerHeader(
                accountName: Text("Rai Qais"),
                accountEmail: Text("RaiQaisSipra@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      // this property for Avatar in circle
                      "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
                )),

            // below use for
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Pesonal"),
              trailing: Icon(Icons.edit),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-Mail"),
              subtitle: Text("RaiQaisSipra@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit), // for icon/button face behave
        //  mini: true, // for smal size
      ),
    );
  }
}
//thdghdghdgh
//hgdhdhgi