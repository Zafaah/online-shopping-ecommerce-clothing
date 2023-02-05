import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:e_commerce_clothing/pages/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Arc(
              edge: Edge.BOTTOM,
              arcType: ArcType.CONVEX,
              height: 110,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                width: 30,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 3, 235, 243)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [ProfileWidget()]),
              )),
          SizedBox(
            height: 3,
          ),
          //
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    CupertinoIcons.person,
                    color: Color.fromARGB(255, 3, 235, 243),
                    size: 30,
                  ),
                  title: Text(
                    'Hafsa Abdukadir Mohamed',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(
                    color: Color.fromARGB(255, 13, 13, 13).withOpacity(0.7)),

//
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Color.fromARGB(255, 3, 235, 243),
                    size: 30,
                  ),
                  title: Text(
                    'hafza@gmail.com',
                    style: TextStyle(
                        color: Color.fromARGB(255, 18, 18, 18).withOpacity(0.6),
                        fontSize: 18),
                  ),
                ),
                Divider(
                    color: Color.fromARGB(255, 16, 15, 15).withOpacity(0.7)),

                //
                ListTile(
                  leading: Icon(
                    CupertinoIcons.phone,
                    color: Color.fromARGB(255, 3, 235, 243),
                    size: 30,
                  ),
                  title: Text(
                    '+252 618630475',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(
                    color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.7)),

                //
                ListTile(
                  leading: Icon(
                    CupertinoIcons.location_solid,
                    color: Color.fromARGB(255, 3, 235, 243),
                    size: 30,
                  ),
                  title: Text(
                    'Boondhere',
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 16, 16).withOpacity(0.6),
                        fontSize: 18),
                  ),
                ),
                Divider(color: Color.fromARGB(255, 11, 4, 4).withOpacity(0.7)),

//

                // update
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color.fromARGB(255, 13, 183, 189),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
