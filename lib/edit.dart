import 'package:flutter/material.dart';
import 'package:ott/profile.dart';


class edit extends StatelessWidget {
  const edit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: ()
            {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profile()),
              );

            },
            child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white54,)),
        title: Padding(
          padding: const EdgeInsets.only(left: 115),
          child: Text("Edit",style: TextStyle(color: Colors.white54),),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text("Name :",style: TextStyle(color: Colors.white54),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 40,
                  width: 250,

                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white54,
                       border: OutlineInputBorder(),
                       hintText: "Enter the name",

                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text("E-mail :",style: TextStyle(color: Colors.white54),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 40,
                  width: 250,

                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(),
                      hintText: "Enter the E-mail",

                    ),
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text("phone :",style: TextStyle(color: Colors.white54),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 40,
                  width: 250,

                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(),
                      hintText: "Enter the number",

                    ),
                  ),
                ),
              ),
              SizedBox(height: 150,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: GestureDetector(
                  onTap: ()
                  {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const profile()),
                    );

                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                          color: Colors.white54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text("Go Back",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),))
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
