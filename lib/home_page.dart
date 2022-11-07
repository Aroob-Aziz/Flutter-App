import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');
  void addition(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState((){
      sum = num1 + num2;
    });
  }
  void subtraction(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState((){
      sum = num1 - num2;
    });
  }
  void multiplication(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState((){
      sum = num1 * num2;
    });
  }
  void division(){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    setState((){
      sum = (num1  ~/ num2);
    });
  }

  void clean(){
    setState((){
      t1.text = "0";
      t2.text = "0";


    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Output: $sum ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: ('Enter Number 1'),
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: ('Enter Number 1'),
                ),
                controller: t2,
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: addition, child: Text('+')),
                  ElevatedButton(onPressed: subtraction, child: Text('-')),

              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: multiplication, child: Text('*')),
                  ElevatedButton(onPressed: division , child: Text('/')),

                ],),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: clean, child: Text('Clear', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
