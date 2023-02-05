import 'package:flutter/material.dart';

class CardPages extends StatelessWidget {
  const CardPages({super.key});

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
                      'Order List',
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
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '2',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                            child: Image.asset('assets/images/image-03.png'),
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
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
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
                            child: Image.asset('assets/images/image-01.jpg'),
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
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '5',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blueGrey[300]),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Items:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          //
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Sub-total",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "\$202",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),

                          // total
                          const Divider(
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$71.2",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
            ),
          )
        ],
      ),
    );
  }
}
