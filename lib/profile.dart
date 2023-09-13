import 'package:flutter/material.dart';
import 'package:ott/download.dart';
import 'package:ott/edit.dart';

import 'bottomnavi.dart';



class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  List<bool> _selected= List.generate(2, ( _) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [

           Container(
             height: 400,
             width: 393,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: GestureDetector(
                          onTap: ()
                          {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const bottom()),
                            );

                          },
                          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white54,)),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 290),
                      child: GestureDetector(
                          onTap: ()
                          {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const edit()),
                            );

                          },
                          child: Icon(Icons.edit,color: Colors.white54,)),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                      border:Border.all(),
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/thor1.png"),
                        //fit: BoxFit.fill
                      )

                  ),

                ),
                SizedBox(height: 15,),
                Text("Chris Hemsworth",style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Container(
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white30),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.call,color: Colors.white,size: 15,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("4321-5678",style: TextStyle(color: Colors.white),),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Container(
                        height: 30,
                        width: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white30),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.mail,color: Colors.white,size: 15,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text("chris@gmail.com",style: TextStyle(color: Colors.white),),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),


           ),
            Container(
              height: 500,
              width: 393,
              color: Colors.black,
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      ToggleButtons(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.purple,
                                      Colors.transparent,
                                    ]
                                ),
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(child: Text("watch history",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            onTap: ()
                            {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const download()),
                              );

                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white30),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text("Downloaded",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),

                            ),
                          ),
                        )
                      ], isSelected: _selected,
                        onPressed: (int index){
                        setState(() {
                          _selected[index]=!_selected[index];

                        });

                        },
                        color: Colors.redAccent,
                        selectedColor: Colors.red,
                      ),

                    ],
                  ),
                  SizedBox(height: 15,),
                  SingleChildScrollView(
                    child: Container(
                      height: 430,
                      //color: Colors.black54,
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: .57,
                          mainAxisSpacing:2,
                          crossAxisSpacing: 4,
                          maxCrossAxisExtent: 150,
                        ),
                        itemCount:l4.length,
                        itemBuilder:(BuildContext ctx, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 150,

                                  decoration: BoxDecoration(

                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(l4[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                ),
                                Text(l4[index].text,style: TextStyle(color: Colors.white54),),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],),
              ),
            )
          ],
        ),
      ),

    );
  }
}
class watch

{
  String?image;
  String?text;
  watch(this.image,this.text);

}


List l4=watchdata.map((e) =>  watch(e["image"],e["text"] )).toList();

var watchdata=[
  {"image":"assets/ep1.png","text":"Episode 1 \nBegining"},
  {"image":"assets/ep2.png","text":"Episode 2 \nSecrets"},
  {"image":"assets/ep3.png","text":"Episode 3 \nLies"},
  {"image":"assets/ep4.png","text":"Episode 4 \nPast "},
  {"image":"assets/ep5.png","text":"Episode 5 \nCrossroads"},
  {"image":"assets/ep6.png","text":"Episode 6 \nEverything"},
  {"image":"assets/ep7.png","text":"Episode 7 \nNo way"},
  {"image":"assets/ep8.png","text":"Episode 8 \nCosmic"},
];
