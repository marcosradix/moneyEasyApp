import 'package:flutter/material.dart';
import 'package:flutter_cash_app/components/components.dart';
import 'package:flutter_cash_app/pages/home.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salário"),
        backgroundColor: Colors.deepOrange,
        elevation: 1.0,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.add, size: 35,color: Colors.white,),
              onPressed: (){
                showDialog(context: context,
                    builder: (context)=> new AlertDialog(
                      title: new Text("Adicionar"),
                      content: new Container(
                        height: 160.0,
                        child: new AlertComponent(),
                      ),
                    ));
              }),
          new IconButton(icon: Icon(Icons.home), onPressed: (){
              Navigator.pop(context, new MaterialPageRoute(
                  builder: (context) => new MyHomePage()
              ));
          })
        ],
      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: new Text("Receita"),
          )
        ],
      ),
    );
  }
}
