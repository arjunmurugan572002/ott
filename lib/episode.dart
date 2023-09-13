import 'package:flutter/material.dart';
import 'package:ott/bottomnavi.dart';
import 'package:ott/play.dart';

import 'homepage.dart';


class ep extends StatelessWidget {
  const ep({super.key});

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
                MaterialPageRoute(builder: (context) => const bottom()),
              );

            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
      ),
     body:DefaultTabController(
       length: 3,
       child: NestedScrollView(
           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
               {
                 return[
                   SliverAppBar(
                     backgroundColor: Colors.black,
                     toolbarHeight: 600,
                      flexibleSpace:Column(
                        children: [
                          Container(
                            height: 447,
                            width: 393,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/dark.png"),
                                fit: BoxFit.fill

                              )
                            ),
                          ),
                          Container(
                            height: 153,
                            width: 393,

                            decoration: BoxDecoration(
                              border:Border.all(),
                             // color: Colors.green,
                            ),
                            child: Column(
                              children: [

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 25.0),
                                      child: Text("Sci-FI, Drama",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15,),
                                      child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white),),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(" 2019",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white),),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:10,),
                                      child: Text("1 Season",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Text("-",style: TextStyle(fontSize: 20,color: Colors.white),),

                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,),
                                      child: Text(" 90 % MAtch",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.green),),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: ()
                                  {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const playscreen()),
                                    );

                                  },
                                  child: Container(
                                   height: 40,
                                   width: 350,
                                   decoration: BoxDecoration(
                                     color: Colors.redAccent,
                                     borderRadius: BorderRadius.circular(5)
                                   ),
                                   child: Row(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.only(left: 150),
                                         child: Icon(Icons.play_arrow),
                                       ),
                                       Text("Play",style: TextStyle(fontWeight: FontWeight.bold),)
                                     ],
                                   ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25,top: 5),
                                  child: Text("A missing child sets four families on a frantic hunt for answers as they unearth a mind-bending mystery that spans three generations.",style: TextStyle(color: Colors.white),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                   ),
                   SliverAppBar(
                     backgroundColor: Colors.black,
                     expandedHeight: 50,
                     pinned: true,
                     primary: false,
    automaticallyImplyLeading: false,
                     title: TabBar(
                         indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.red,
                       indicatorWeight: 2,
                       labelColor: Colors.black,
                       isScrollable: true,
                       tabs: [

                         Tab(child:Text( "Episodes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),
                         Tab(child:Text( "Trailers & More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),)),
                         Tab(child:Text( "More Like This",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),))
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
                     return Card(
                       child: Container(
                         height: 150,
                         width: 390,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           color: Colors.black
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
                       ),
                     );
                   },
                 ),
               ),
                  ],
       ),
       ),
     )
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
class trailer

{
  String?image;
  String?text;
  trailer(this.image,this.text);

}


List l3=trailerdata.map((e) =>  trailer(e["image"],e["text"] )).toList();

var trailerdata=[
  {"image":"assets/ep1.png","text":"Season 1 \nBegining"},
  {"image":"assets/ep2.png","text":"Season 2 \nSecrets"},
  {"image":"assets/ep3.png","text":"Season 3 \nLies"},
  {"image":"assets/ep4.png","text":"Season 4 \nPast "},




];