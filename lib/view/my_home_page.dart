import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue[900],
        centerTitle: true,
        title: Text("TodoModel",style: const TextStyle(fontSize: 16,fontFamily: "roboto"),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,

            children: const <Widget> [
              SizedBox(height: 20,),
              Text("12 : 00 Pm",
                style:TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white54),),
              Text("Current time",
                style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white54),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 700,
           decoration: const BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topLeft:
             Radius.circular(50),topRight: Radius.circular(50)
             )
           ),
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: 110,
                itemBuilder:(context,index)=>
                     const Padding(
                       padding: EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
                       child: ListTile(
                           leading: Icon(Icons.list),
                           trailing: Text("Punam",
                             style: TextStyle(
                                 color: Colors.green,fontSize: 15),),
                           title:Text("List item ")
                       ),
                     )
                 )
            ),

        ],
      ),
    );
  }
}
