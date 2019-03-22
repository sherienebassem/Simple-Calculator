 import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomeScreenState();
      
    
    }
    
    class HomeScreenState extends State <HomeScreen> {
      var num1 = 0.0, num2 = 0.0, sum =0.0;

      final TextEditingController t1 = 
            TextEditingController(text: '');
      
      final TextEditingController t2 = 
            TextEditingController(text: '');

      void doAdd(){
        setState(() {
         num1 = double.parse(t1.text);
         num2 = double.parse(t2.text);
         sum = num1 + num2 ;
                });
      }

      void doSub(){
        setState(() {
         num1 = double.parse(t1.text);
         num2 = double.parse(t2.text);
         sum = num1 - num2 ;
                });
      }

      void doMull(){
        setState(() {
         num1 = double.parse(t1.text);
         num2 = double.parse(t2.text);
         sum = num1 * num2 ;
                });
      }

      void doDiv(){
        setState(() {
         num1 = double.parse(t1.text);
         num2 = double.parse(t2.text);
         sum = num1 / num2 ;
                });
      }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      backgroundColor: Colors.greenAccent[100],

      // AppBar
      appBar:AppBar(
        // Property
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Calculator',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,

        ),
        
        ),
      ),

      // Body

      body: new Container(
        padding:const EdgeInsets.all(20.0),
        
        
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            new Container(
             height: 60.0,
             padding: EdgeInsets.all(10.0),
             color: Colors.black,
             child: new Text('OutPut : $sum',
             
                   style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                        
            ),
            ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Your Number One'
              ),
              controller: t1,
            ),

               new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter Your Number Two',
                counterStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              
              controller: t2,
            ),

            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),

           // new Expanded 
              // flex: 2,
                           new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    color: Colors.red,
                    child: Text('+',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                    onPressed:doAdd,
                  ),

                   new MaterialButton(
                     color: Colors.red,
                    child: Text('-',
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    
                    ),
                    onPressed: doSub,
                  ),

                ],
              ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  new MaterialButton(
                    color: Colors.red,
                    child: Text('*',
                    
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    
                    ),
                    onPressed: doMull,
                  ),

                   new MaterialButton(
                     color: Colors.red, 
                    child: Text('/',
                    
                      style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                    ),
                    onPressed: doDiv,
                  ),
              ],
            ),

          ],

        ),
       
      ),
    );
  }
}