import 'package:assaingment2/details.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.pink),),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(number.toString(), style:
            TextStyle(
                fontSize: 40,
                color: Colors.amber,
              fontWeight: FontWeight.bold,
            ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,

             children: [
               ElevatedButton(onPressed: (){
                 setState(() {
                   number++;
                 });
               }, child: Text('Increment', style: TextStyle(color: Colors.amber, fontSize: 25),)),

               ElevatedButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Details( name: number)));
               }, child: Text('Open Details', style: TextStyle(color: Colors.amber, fontSize: 25),))
             ],
           ),
          ],
        ),
      ),
    );
  }
}
