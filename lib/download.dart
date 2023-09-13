import 'package:flutter/material.dart';
import 'package:ott/bottomnavi.dart';



class download extends StatelessWidget {
  const download({super.key});

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
           child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white54,)),
       title: Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
     ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [

            SizedBox(height: 270,),
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
               // border:Border.all(),
              //  color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/box.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
            SizedBox(height: 20,),
            Text("No Downloads Available",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),
            SizedBox(height: 15,),
            Text("Explore and download your favourite movies and",style: TextStyle(color: Colors.white54),),
            Text("shows to w atch on the go",style: TextStyle(color: Colors.white54),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: ()
              {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const bottom()),
                );

              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text("Go to Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
