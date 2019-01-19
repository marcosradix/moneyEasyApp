import 'package:flutter/material.dart';
import 'package:flutter_cash_app/pages/income.dart';
import 'package:flutter_cash_app/pages/expense.dart';
import 'package:flutter_cash_app/pages/category.dart';
import 'package:flutter_cash_app/components/components.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Página inicial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // este código nos dá a largura da tela.
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Money Easy app"),
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
        ],

      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
              title: new Icon(Icons.account_balance_wallet, size: 64.0, color: Colors.grey,),
              subtitle: new Padding(padding: EdgeInsets.only(left: size / 3.5),
                child: new Text("Não desperdice dinheiro", style: TextStyle(fontSize: 16.0)),),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total"),
                subtitle: new Text("R\$720"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Preço"),
                subtitle: new Text("R\$230", style: TextStyle(color: Colors.red),),
              ),
            ),
            Expanded(
              child: new IconButton(icon: Icon(Icons.remove_red_eye, color: Colors.deepOrange,),
                  onPressed: (){

                  }),
            ),
          ],
        ),
      ),
    );
  }
}
