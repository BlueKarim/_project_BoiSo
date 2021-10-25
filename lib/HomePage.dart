import 'package:flutter/material.dart';
import 'GradientAppBar.dart';
import 'DivineNumber.dart';
import 'DivinePercent.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _textEditingController;
  late TextEditingController _textLover;
  String _text1 = 'Bói tình yêu theo phần trăm';
  String _text2 = 'Bói tình yêu bằng dãy số';
  String _subtitle1 = 'Các bạn thấu hiểu nhau bao nhiêu % đây';
  String _subtitle2 = 'Con số của các bạn là gì';
  bool _isOn = false;
  int number=0;
  int finalnumber = 0;
  String answer = '';
  String name1 = '';
  String name2 = '';
  String NumberName1 ='';
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new PreferredSize(
        child: new GradientAppBar("Tâm Linh Online"),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0
        ),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: SwitchListTile(
                title: Text(
                  _isOn? _text2 : _text1,
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                subtitle: Text(
                  _isOn? _subtitle2:_subtitle1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                value: _isOn,
                onChanged: (bool? value){
                  setState(() {
                    _isOn = value!;
                  });
                }
              ),
            ),
            _isOn? DivinePercent():DivineNumber(),
          ],
        ),
      )
    );
  }
}