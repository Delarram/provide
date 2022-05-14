import 'package:easyapproach/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        title: const Text("TodoModel",style: TextStyle(fontSize: 16,fontFamily: "roboto"),
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
            height: 30,
          ),
          Container(
            height: 700,
           decoration: const BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(topLeft:
             Radius.circular(50),topRight: Radius.circular(50)
             )
           ),
             child: Consumer<TodoModel>
               (builder: ((context, todo, child) =>
                ListView.builder(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: todo.taskList.length,
                    itemBuilder:(context,index)=>
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              CircleAvatar(
                                backgroundImage:  AssetImage("assets/earth.png"),backgroundColor: Colors.transparent,
                                radius: 35,


                                onBackgroundImageError: (e, s) {
                                  debugPrint('image issue, $e,$s');
                                },
                              ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: ListTile(
                              title: Text("This is todo ${todo.taskList[index].title}",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("This is todo ${todo.taskList[index].detail}",style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(Icons.check_circle, color: Colors.greenAccent,),
                            ),
                          ),
                            ],
                          ),
                        )
                )
             ),
             ),
            ),

        ],
      ),
    //  floatingActionButton: FloatingActionButton(
      //  child: Icon(Icons.add),
        //onPressed: (){
          //Provider.of<TodoModel>(context,listen: false).addTaskInList();
        //},
      //),
    //  floatingActionButton: Row(
      //  mainAxisAlignment: MainAxisAlignment.end,
        //children: [
         // FloatingActionButton(onPressed: (){
           // Provider.of<TodoModel>(context,listen: false).reset();
          //},
          //backgroundColor: Colors.lightBlue[900],
            //child: Icon(Icons.exposure_zero_rounded,color: Colors.white,size: 30,),
          //),
          //const SizedBox(width: 30,),
          //FloatingActionButton(onPressed: (){
            //Provider.of<TodoModel>(context,listen: false).addTaskInList();
          //},
          //backgroundColor: Colors.lightBlue[900],
          //child:  Icon(Icons.add,color: Colors.white,size: 30,),
          //)
        //],
      //),
    );
  }
}
