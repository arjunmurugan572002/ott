import 'package:flutter/material.dart';
import 'package:ott/episode.dart';
import 'package:ott/video.dart';

import 'homepage.dart';


class playscreen extends StatefulWidget {
  const playscreen({super.key});

  @override
  State<playscreen> createState() => _playscreenState();
}

class _playscreenState extends State<playscreen> {
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
            MaterialPageRoute(builder: (context) => const ep()),
          );

        },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
              {
                return[
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                      backgroundColor: Colors.black,
                      toolbarHeight: 350,
                      flexibleSpace:Column(
                        children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: SamplePlayer(
                               ),
                             ),
                          Container(
                            height: 100,
                            width: 393,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 210),
                                  child: Text("DARK - 2018.",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 275),
                                  child: Text("S1 E1 Secrets",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 280),
                                  child: Text("Episodes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                                )
                              ],

                            ),
                          )
                        ],
                      )
                  ),
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                      backgroundColor: Colors.black,
                      expandedHeight: 50,
                      primary: false,

                      title: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.red,
                          indicatorWeight: 2,
                          isScrollable: true,
                          tabs: [

                            Tab(child:Text( "Season 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),
                            Tab(child:Text( "Season 2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),

                          ]
                      )


                  ),




                ];
              },

          body: TabBarView(
            children: [
              Container(


                color: Colors.black,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:l2.length,
                  itemBuilder:(BuildContext ctx, index){
                    return Container(
                      height: 100,
                      width: 390,
                      decoration: BoxDecoration(
                        border: Border.all(),

                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                  // border: Border.all(),
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(l2[index].image),
                                      fit: BoxFit.fill,
                                    )
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(l2[index].text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Icon(Icons.file_download_outlined,color: Colors.white,),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 40,

                color: Colors.black,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:l3.length,
                  itemBuilder:(BuildContext ctx, index){
                    return Container(
                      height: 150,
                      width: 390,
                      decoration: BoxDecoration(
                        border: Border.all(),

                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                                height: 120,
                                width: 160,
                                decoration: BoxDecoration(
                                  // border: Border.all(),
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage(l3[index].image),
                                      fit: BoxFit.fill,
                                    )
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(l3[index].text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Icon(Icons.file_download_outlined,color: Colors.white,),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),

      ),

    );
  }
}
class episodes

{
  String?image;
  String?text;
  episodes(this.image,this.text);

}


List l2=episodesdata.map((e) =>  episodes(e["image"],e["text"] )).toList();

var episodesdata=[
  {"image":"assets/ep1.png","text":"Episode 1 \nBegining"},
  {"image":"assets/ep2.png","text":"Episode 2 \nSecrets"},
  {"image":"assets/ep3.png","text":"Episode 3 \nLies"},
  {"image":"assets/ep4.png","text":"Episode 4 \nPast "},
  {"image":"assets/ep5.png","text":"Episode 5 \nCrossroads"},
  {"image":"assets/ep6.png","text":"Episode 6 \nEverything"},
  {"image":"assets/ep7.png","text":"Episode 7 \nNo way"},
  {"image":"assets/ep8.png","text":"Episode 8 \nCosmic"},
];
class episodes1

{
  String?image;
  String?text;
  episodes1(this.image,this.text);

}


List l3=episodes1data.map((e) =>  episodes1(e["image"],e["text"] )).toList();

var episodes1data=[
  {"image":"assets/ep1.png","text":"Episode 1 \nBegining"},
  {"image":"assets/ep2.png","text":"Episode 2 \nSecrets"},
  {"image":"assets/ep3.png","text":"Episode 3 \nLies"},
  {"image":"assets/ep4.png","text":"Episode 4 \nPast "},
  {"image":"assets/ep5.png","text":"Episode 5 \nCrossroads"},
  {"image":"assets/ep6.png","text":"Episode 6 \nEverything"},
  {"image":"assets/ep7.png","text":"Episode 7 \nNo way"},
  {"image":"assets/ep8.png","text":"Episode 8 \nCosmic"},
];
