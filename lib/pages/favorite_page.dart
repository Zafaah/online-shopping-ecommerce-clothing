import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constatnts.dart';

class FavoritePages extends StatelessWidget {
  const FavoritePages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Text(
                      'favoriteItems',
                      style: TextStyle(
                          color: Color.fromARGB(255, 19, 18, 18),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 450,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 213, 200, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/images/image-05.jpg'),
                            width: 50,
                            height: 500,
                          ),
                          title: Container(
                              height: 40,
                              alignment: AlignmentDirectional.center,
                              child: Text('Modern light Clothes')),
                          subtitle: Column(
                            children: [
                              Container(
                                height: 20,
                                alignment: Alignment.topCenter,
                                child: Text('Dress Modern'),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '\$202',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          trailing: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                            color: Colors.red,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 450,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 213, 200, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/images/image-05.jpg'),
                            width: 50,
                            height: 500,
                          ),
                          title: Container(
                              height: 40,
                              alignment: AlignmentDirectional.center,
                              child: Text('Modern light Clothes')),
                          subtitle: Column(
                            children: [
                              Container(
                                height: 20,
                                alignment: Alignment.topCenter,
                                child: Text('Dress Modern'),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '\$202',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          trailing: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                            color: Colors.red,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      width: 450,
                      height: 90,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(48, 213, 200, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          leading: Container(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset('assets/images/image-04.png'),
                            width: 50,
                            height: 500,
                          ),
                          title: Container(
                              height: 40,
                              alignment: AlignmentDirectional.center,
                              child: Text('Modern light Clothes')),
                          subtitle: Column(
                            children: [
                              Container(
                                height: 20,
                                alignment: Alignment.topCenter,
                                child: Text('Dress Modern'),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '\$202',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          trailing: Icon(
                            Icons.delete_forever_outlined,
                            size: 50,
                            color: Colors.red,
                          )),
                    ),
                  ),
                  //
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
