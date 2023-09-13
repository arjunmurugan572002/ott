import 'package:flutter/material.dart';


class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [


            Padding(
              padding: const EdgeInsets.only(left: 20,top: 50),
              child: Container(
               color: Colors.black,
              height: 35,
              width: 350,
              child: InkWell(
                onTap: (){},
                child: TextFormField(

                  decoration: InputDecoration(

                    border: OutlineInputBorder(

                    ),
                    filled: true,
                    fillColor: Colors.transparent,
                    prefixIcon: Icon(Icons.search,color: Colors.white30,),
                    hintText: "Movies, Shows and More",
                    hintStyle: TextStyle(color: Colors.white30),
                    suffixIcon:Icon(Icons.camera_alt_rounded),

                  ),
                ),
              ),

          ),
            ),
             SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 190),
                child: Text("POPULAR SEARCHES",style: TextStyle(color: Colors.white,fontSize: 15),),
              ),
              SizedBox(height: 20,),
              SingleChildScrollView(
                child: Container(
                       height: 600,

                  color: Colors.black,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:l4.length,
                    itemBuilder:(BuildContext ctx, index){
                      return Card(
                        color: Colors.white30,
                        child: Container(
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
                                    height: 150,
                                    width: 160,
                                    decoration: BoxDecoration(
                                      // border: Border.all(),
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: AssetImage(l4[index].image),
                                          fit: BoxFit.fill,
                                        )
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(l4[index].text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 75),
                              //   child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                              // )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class movies

{
  String?image;
  String?text;
  movies(this.image,this.text);

}


List l4=moviesdata.map((e) =>  movies(e["image"],e["text"] )).toList();

var moviesdata=[
  {"image":"assets/ep1.png","text":"Titanic"},
  {"image":"assets/ep2.png","text":"Tenet"},
  {"image":"assets/ep3.png","text":"Loki"},
  {"image":"assets/ep4.png","text":"Avengers "},
  {"image":"assets/ep5.png","text":"Thor"},
  {"image":"assets/ep6.png","text":"Iron-Man"},
  {"image":"assets/ep7.png","text":"Avatar"},
  {"image":"assets/ep8.png","text":"SEE"},
];
