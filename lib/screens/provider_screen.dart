import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
 
  
  @override
   Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
       create: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            title: MyText(),
            ),
          body: Level1(),
        ),
      ),
    );
  } 
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
          Level3(),
       
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context, listen: false).data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:(newText) {
        Provider.of<Data>(context, listen: false).changeString(newText);
      },
    );
  }
}

class Data extends ChangeNotifier{
    String data = 'Some Data';
  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}