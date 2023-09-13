import 'package:flutter/material.dart';


class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  bool _isShow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: ()
            {
              Navigator.pop(context);

            },
            child: Icon(Icons.arrow_back,color: Colors.white54,)),
        title: Text("Latest Release",style: TextStyle(color: Colors.white54),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                color: Colors.black,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: .771,
                    mainAxisSpacing:10,
                    crossAxisSpacing: 1,
                    maxCrossAxisExtent: 130,
                  ),
                  itemCount:l1.length,
                  itemBuilder:(BuildContext ctx, index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            width: 150,

                            decoration: BoxDecoration(

                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage(l1[index].image),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),

                            ),
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
              Visibility(
                visible: _isShow,
               child: Container(
                 height: 350,
                 color: Colors.black,
                 child: GridView.builder(
                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                     childAspectRatio: .77,
                     mainAxisSpacing:2,
                     crossAxisSpacing: 3,
                     maxCrossAxisExtent: 130,
                   ),
                   itemCount:l1.length,
                   itemBuilder:(BuildContext ctx, index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Container(
                             height: 130,
                             width: 150,

                             decoration: BoxDecoration(

                               border: Border.all(),
                               image: DecorationImage(
                                 image: AssetImage(l1[index].image),
                                 fit: BoxFit.fill,
                               ),
                               borderRadius: BorderRadius.circular(20),

                             ),
                           ),

                         ],
                       ),
                     );
                   },
                 ),
               ),
              ),
              const SizedBox(
                height:30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  setState(
                        () {
                      _isShow = !_isShow;
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    _isShow ? 'hide' : 'show',
                    style: TextStyle(fontSize: 20,color: Colors.white54),
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
  {"image":"assets/12.png",},


];