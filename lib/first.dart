import 'package:count/count.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterDemo extends StatefulWidget{
  @override
  State<CounterDemo> createState()=> _CounetrDemoState();

}
class _CounetrDemoState extends State<CounterDemo>{
  @override
  Widget build(BuildContext context){
    final counterprovider=Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App With Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your have pushed the button this many times:"),
            Text("${counterprovider.count}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: counterprovider.increment,child: Icon(Icons.add),),
          SizedBox(width: 10),
          FloatingActionButton(onPressed: counterprovider.decrement,child: Icon(Icons.remove),),
        ],
      ),
    );
  }
}