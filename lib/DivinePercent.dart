import 'dart:html';
import 'package:flutter/material.dart';


class DivineNumber extends StatefulWidget {
  const DivineNumber({Key? key}) : super(key: key);

  @override
  _DivineNumber createState() => _DivineNumber();
}

class _DivineNumber extends State<DivineNumber> {
  late TextEditingController _TennuController;
  late TextEditingController _TenNamController;
  String _text1 = "";
  String _text2 = "";
  String _Ketqua = "";
  String Love = "";
  var firstnum = [0, 0, 0, 0, 0];
  String tong = "";
  String a = '';

  String _textSubmit = 'Hi';
  @override
  void initState() {
    Love = '';
    tong = '';
    firstnum = [0, 0, 0, 0, 0];
    a = '';
    super.initState();
    _TennuController = TextEditingController();
    _TenNamController = TextEditingController();
  }

  void xuly() {
    setState(() {
      for (int i = 0; i < 5; i++) {
        a = a + firstnum[i].toString();
      }
      while (int.parse(a) > 100) {
        for (int i = 1; i < a.length; i++) {
          tong = tong + (int.parse(a[0]) + int.parse(a[i])).toString();
        }
        a = tong;
        tong = '';
      }
    });

    if (int.parse(a) < 50) {
      _Ketqua = a +
          "% Hai người không quá hòa hợp với nhau. Hãy cố gắng tìm cơ hội để thấu hiểu đối phương.";
    } else if (int.parse(a) > 80) {
      _Ketqua = a +
          "% Hai người sinh ra là để dành cho nhau. Mối tình rất bền chặt và sẽ kéo dài đến suốt đời.";
    } else {
      _Ketqua = a +
          "% Sự phù hợp giữa hai người ở mức tương đối. Chuyện tình cảm có thể tiến triển xa hơn nữa.";
    }
    initState();
  }

  void kiemtra() {
    setState(() {
      Love = _text1 + 'LOVES' + _text2;
      if (_text1 == '' || _text2 == '') {
        _Ketqua = '';
      } else {
        for (int i = 0; i < Love.length; i++) {
          if (Love[i].toUpperCase() == "L") {
            firstnum[0]++;
          } else if (Love[i].toUpperCase() == "O") {
            firstnum[1]++;
          } else if (Love[i].toUpperCase() == "V") {
            firstnum[2]++;
          } else if (Love[i].toUpperCase() == "E") {
            firstnum[3]++;
          } else if (Love[i].toUpperCase() == "S") {
            firstnum[4]++;
          }
        }
        xuly();
      }
    });
  }

  @override
  void dispose() {
    _TennuController.dispose();
    _TenNamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              onTap: () => _TennuController.selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: _TennuController.value.text.length),
              controller: _TennuController,
              decoration: InputDecoration(  
                    border: OutlineInputBorder(),  
                    labelText: 'Your Name',  
                    hintText: 'Enter Your Full Name',  
                  ),
              style: TextStyle(fontSize: 30),
              onChanged: (nu) {
                setState(() {
                  _text1 = nu;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              onTap: () => _TenNamController.selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: _TenNamController.value.text.length),
              controller: _TenNamController,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(  
                    border: OutlineInputBorder(),  
                    labelText: 'Your Love',  
                    hintText: 'Enter Your Full Name Love',  
                  ),
              onChanged: (nam) {
                setState(() {
                  _text2 = nam;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_text1 ',style: TextStyle(fontSize: 30)),
              Text(' LOVES ',style: TextStyle(fontSize: 30,color: Colors.red)),
              Text(' $_text2',style: TextStyle(fontSize: 30)),
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Kết Quả Của Hai bạn là :',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Text('$_Ketqua',style: TextStyle(
                fontSize: 30,),),
          ElevatedButton(
              onPressed: () {
                kiemtra();
              },
              child: Text('Kiểm Tra'))
        ],
      ),
    );
  }
}