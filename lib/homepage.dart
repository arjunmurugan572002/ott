import 'package:flutter/material.dart';
import 'package:ott/episode.dart';
import 'package:ott/more.dart';
import 'package:ott/play.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 450,
                  width: 510,

                  decoration: BoxDecoration(
                      border: Border.all(),
                      // color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/dark.png"),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Container(
                  height:760,
                  width: 510,
                  decoration:BoxDecoration(
                      border: Border.all(),
                      color: Colors.black
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 135,top: 10),
                        child: Text("Scifi,  Drama  .  2015  . 01 Season",style: TextStyle(color: Colors.white),),
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: GestureDetector(
                            onTap: ()
                            {

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const ep()),
                              );

                            },
                            child: Container(
                              height: 35,
                              width: 160,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 35),
                                    child: Icon(Icons.play_arrow,color: Colors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Play',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Container(
                            height: 35,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: Icon(Icons.add),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('My List',style: TextStyle(fontWeight: FontWeight.bold,),),
                                )
                              ],
                            ),
                          ),
                        )
                      ],),
                      SizedBox(height: 20,),
                     Row(children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Text("Latest Relaase",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 170),
                         child: GestureDetector(
                             onTap: ()
                             {

                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const More()),
                               );

                             },
                             child: Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),)),
                       ),
                       Icon(Icons.arrow_forward_ios,color: Colors.white54,)
                     ],),
                      Container(
                        height: 180,
                        //  color: Colors.grey,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:l1.length,
                          itemBuilder:(BuildContext ctx, index){
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 120,

                                    decoration: BoxDecoration(

                                      //  border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(l1[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      //shape: BoxShape.circle
                                    ),
                                  ),

                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:25 ),
                            child: Text("Popular Shows",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          ),
                          GestureDetector(
                              onTap: ()
                              {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const More()),
                                );

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 160),
                                child: Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                              )),
                          Icon(Icons.arrow_forward_ios,color: Colors.white54,)
                        ],
                      ),
                      Container(
                        height: 180,
                        //  color: Colors.grey,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:l1.length,
                          itemBuilder:(BuildContext ctx, index){
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 120,
                                  alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(

                                      //  border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(l1[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      //shape: BoxShape.circle
                                    ),
                                  ),

                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Text("Drama",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                          ),
                          GestureDetector(
                              onTap: ()
                              {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const More()),
                                );

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left:230),
                                child: Text("More",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                              )),
                          Icon(Icons.arrow_forward_ios,color: Colors.white54,)
                        ],
                      ),
                      Container(
                        height: 180,
                        //  color: Colors.grey,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:l1.length,
                          itemBuilder:(BuildContext ctx, index){
                            return Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 120,

                                    decoration: BoxDecoration(

                                      //  border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage(l1[index].image),
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      //shape: BoxShape.circle
                                    ),
                                  ),

                                ],
                              ),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),





    );
  }
}
class latest

{
  String?image;

  latest(this.image);

}


List l1=latestdata.map((e) =>  latest(e["image"] )).toList();

var latestdata=[
  {"image":"assets/12.png",},
  {"image":"assets/game.png",},
  {"image":"assets/parallel.png",},
  {"image":"assets/see.png",},
  {"image":"assets/strangerthings.png",},



];