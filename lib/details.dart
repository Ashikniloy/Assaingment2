import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  final dynamic name;


  const Details({super.key, this.name});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Details increment Number', style: TextStyle(color: Colors.green, fontSize: 30,),),
            Text(widget.name.toString(), style: TextStyle(
              color: Colors.amber,
              fontSize: 40,
            ),),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
