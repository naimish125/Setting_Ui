import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Setting_Provider.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  androidview? a, at;

  @override
  Widget build(BuildContext context) {
    at = Provider.of<androidview>(context, listen: true);
    a = Provider.of<androidview>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Setting UI"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Common",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              SizedBox(height: 7,),
              ListTile(
                leading: Icon(Icons.cloud_outlined),
                title: Text("Enviroment"),
                subtitle: Text("Production"),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phonr Number"),
              ),
              SizedBox(height: 7,),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.output_outlined),
                title: Text("Sign out"),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Security",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                leading: Icon(Icons.phonelink_lock_sharp),
                title: Text("Lock app in background"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: at!.a1,
                  onChanged: (value) {
                    at!.change1(value);
                  },
                ),
              ),
              SizedBox(height: 7,),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: at!.a2,
                  onChanged: (value) {
                    at!.change2(value);
                  },
                ),
              ),
              SizedBox(height: 7,),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: at!.a3,
                  onChanged: (value) {
                    at!.change3(value);
                  },
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Music",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
