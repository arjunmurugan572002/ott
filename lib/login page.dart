import 'package:flutter/material.dart';
import 'package:ott/bottomnavi.dart';
import 'package:ott/homepage.dart';

class loginott extends StatelessWidget {
  const loginott({super.key});

  @override
  Widget build(BuildContext context) {
    final _key2 = GlobalKey<FormState>();
    return Scaffold(
        //backgroundColor: Colors.black,

        body: Form(
            key: _key2,
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black,
                        //Colors.white,

                        Colors.red,
                        Colors.black
                      ]),
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270),
                      child: Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text("LOGIN",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 300,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 310),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      //filled: true,
                                      //fillColor: Colors.white,
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      //border: OutlineInputBorder(),
                                      hintText: "Enter the Email",
                                      hintStyle: TextStyle(color: Colors.white)),
                                  keyboardType: TextInputType.text,
                                  validator: (value) {
                                    final exp = RegExp(
                                            r"^[a-zA-Z0_9]+@[a-zA-Z0-9-]+[.]+[a-z]*$")
                                        .hasMatch(value!);
                                    if (value!.isEmpty) {
                                      return "Enter Email id";
                                    } else if (!exp) {
                                      return 'Enter  Valid Name';
                                    }
                                    return null;
                                  },
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 290),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    // border: OutlineInputBorder(),
                                    // filled: true,
                                    // fillColor: Colors.white,
                                    prefixIcon: Icon(
                                      Icons.safety_check_outlined,
                                      color: Colors.black,
                                    ),
                                    hintText: "Enter the Password",
                                    hintStyle: TextStyle(color: Colors.white)),
                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Enter the valid password';
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            // GestureDetector(
                            //   onTap: ()
                            //   {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context) => const pop1()),
                            //     );
                            //   },
                            // ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const bottom()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.red,
                                          Colors.black,
                                        ]),
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 270),
                            //   child: Container(
                            //
                            //     height: 80,
                            //     width: 70,
                            //     decoration: BoxDecoration(
                            //       //border: Border.all(),
                            //       image: DecorationImage(
                            //         image: AssetImage("assets/elite.jpg"),opacity: 90,
                            //         fit: BoxFit.fill
                            //       )
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    )
                  ]),
                ))));
  }
}
