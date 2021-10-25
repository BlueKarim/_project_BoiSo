import 'package:flutter/material.dart';

class DivinePercent extends StatefulWidget {
  const DivinePercent({Key? key}) : super(key: key);

  @override
  _DivinePercent createState() => _DivinePercent();
}

class _DivinePercent extends State<DivinePercent> {
  late TextEditingController _TennuController;
  late TextEditingController _TenNamController;
  String _text1 = '';
  String _text2 = "";
  String _Ketqua = "";
  var tennu = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  var tennam = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  String _textSubmit = 'Hi';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TennuController = TextEditingController();
    _TenNamController = TextEditingController();
  }
  void xuly() {
    int tongnu = 0;
    int tongnam = 0;
    int tong = 0;
    setState(() {
      for (int i = 0; i < tennu.length; i++) {
        tongnu = tongnu + tennu[i];
      }
      for (int i = 0; i < tennam.length; i++) {
        tongnam = tongnam + tennam[i];
      }
      tong = tongnu + tongnam;
      while (tong > 10) {
        tong = int.parse(tong.toString()[0]) + int.parse(tong.toString()[1]);
      }
      if (tong == 1) {
        _Ketqua =
            "Số 1 : Hai người chính là những người bạn đời tri kỷ của nhau. Dù không dùng đến lời nói, hai bạn vẫn có thể hiểu được tâm tư của đốiphương. Mối tình của hai người ngọt ngào, mặn nồng khiến mọi người xung quanh phải ngưỡng mộ";
      } else if (tong == 2) {
        _Ketqua =
            "Số 2 : Mối tình của hai người dù thắm thiết nhưng sẽ gặp phải trở ngại.Dù hai người luôn muốn dành trọn cả đời ở bên đối phương nhưng họ vẫn có thể phải xa nhau vì sự phản đối của gia đình. Để bảo vệ tình yêu, cặp đôi này phải tỏ ra mạnh mẽ hơn nữa.";
      } else if (tong == 3) {
        _Ketqua =
            "Số 3 : Đây là cặp đôi thanh mai trúc mã, đi từ tình bạn trong sáng ngây thơ đến tình yêu vĩnh cửu. Chính vì thế, họ có thể thấu hiểu đối phương đến từng chân tơ kẽ tóc. Cặp đôi này sẽ gặp khó khăn khi phải vượt qua ranh giới giữa tình bạn và tình yêu.";
      } else if (tong == 4) {
        _Ketqua =
            "Số 4 : Mối lương duyên tiền định kéo dài trong nhiều kiếp chính là nguyên nhân khiến hai bạn đến bên nhau trong kiếp này. Chính vì thế, cặp đôi này có sự hòa hợp cả về thể xác lẫn linh hồn.";
      } else if (tong == 5) {
        _Ketqua =
            "Số 5 :  Mối tình của hai người có nguy cơ tan vỡ bởi sự chen ngang của người thứ ba. Để tránh bị người khác chia rẽ, cặp đôi này phải dành nhiều thời gian tâm tình, hẹn hò để tăng mức độ thấu hiểu lẫn nhau.";
      } else if (tong == 6) {
        _Ketqua =
            "Số 6 : Ngay từ cái nhìn đầu tiên, hai người đã xác định đối phương là người bạn đời của mình. Dù chỉ mới gặp nhau, cặp đôi này đã thể hiện sự đồng cảm sâu sắc.";
      } else if (tong == 7) {
        _Ketqua =
            "Số 7 : Hai người đến với nhau vì sự hòa hợp về chí hướng và lý tưởng trong cuộc sống. Cặp đôi này sẽ cùng nhau phấn đấu để biến giấc mơ của cả hai trở thành sự thật.";
      } else if (tong == 8) {
        _Ketqua =
            "Số 8 : Mức độ ăn ý của hai người ở mức khá cao. Cặp đôi này luôn muốn dành cho nhau những tình cảm chân thành ấm áp nhất. Hai người có thể sống bên nhau đều đầu bạc răng nong.";
      } else if (tong == 9) {
        _Ketqua =
            "Số 9 : Tâm hồn của hai người không hướng về nhau nên khó đạt được sự hòa hợp trong mối quan hệ. Để duy trì mối tình bền lâu, cả hai phải cho nhau cơ hội để tìm hiểu về tâm tư, nhu cầu của đối phương.";
      }
    });
  }

  void kiemtra() {
    setState(() {
      for (int i = 0; i < _text1.length; i++) {
        if (_text1[i].toUpperCase() == 'A' ||
            _text1[i].toUpperCase() == 'K' ||
            _text1[i].toUpperCase() == "U") {
          tennu[i] = 1;
        } else if (_text1[i].toUpperCase() == 'B' ||
            _text1[i].toUpperCase() == 'S' ||
            _text1[i].toUpperCase() == "J") {
          tennu[i] = 2;
        } else if (_text1[i].toUpperCase() == 'C' ||
            _text1[i].toUpperCase() == 'L' ||
            _text1[i].toUpperCase() == "T") {
          tennu[i] = 3;
        } else if (_text1[i].toUpperCase() == 'D' ||
            _text1[i].toUpperCase() == 'N' ||
            _text1[i].toUpperCase() == "X") {
          tennu[i] = 4;
        } else if (_text1[i].toUpperCase() == 'E' ||
            _text1[i].toUpperCase() == 'M' ||
            _text1[i].toUpperCase() == "W") {
          tennu[i] = 5;
        } else if (_text1[i].toUpperCase() == 'F' ||
            _text1[i].toUpperCase() == 'O' ||
            _text1[i].toUpperCase() == "V") {
          tennu[i] = 6;
        } else if (_text1[i].toUpperCase() == 'G' ||
            _text1[i].toUpperCase() == 'Q' ||
            _text1[i].toUpperCase() == "Z") {
          tennu[i] = 7;
        } else if (_text1[i].toUpperCase() == 'H' ||
            _text1[i].toUpperCase() == 'P' ||
            _text1[i].toUpperCase() == "Y") {
          tennu[i] = 8;
        } else if (_text1[i].toUpperCase() == 'I' ||
            _text1[i].toUpperCase() == 'R') {
          tennu[i] = 9;
        }
      }
      for (int i = 0; i < _text2.length; i++) {
        if (_text2[i].toUpperCase() == 'A' ||
            _text2[i].toUpperCase() == 'K' ||
            _text2[i].toUpperCase() == "U") {
          tennam[i] = 1;
        } else if (_text2[i].toUpperCase() == 'B' ||
            _text2[i].toUpperCase() == 'S' ||
            _text2[i].toUpperCase() == "J") {
          tennam[i] = 2;
        } else if (_text2[i].toUpperCase() == 'C' ||
            _text2[i].toUpperCase() == 'L' ||
            _text2[i].toUpperCase() == "T") {
          tennam[i] = 3;
        } else if (_text2[i].toUpperCase() == 'D' ||
            _text2[i].toUpperCase() == 'N' ||
            _text2[i].toUpperCase() == "X") {
          tennam[i] = 4;
        } else if (_text2[i].toUpperCase() == 'E' ||
            _text2[i].toUpperCase() == 'M' ||
            _text2[i].toUpperCase() == "W") {
          tennam[i] = 5;
        } else if (_text2[i].toUpperCase() == 'F' ||
            _text2[i].toUpperCase() == 'O' ||
            _text2[i].toUpperCase() == "V") {
          tennam[i] = 6;
        } else if (_text2[i].toUpperCase() == 'G' ||
            _text2[i].toUpperCase() == 'Q' ||
            _text2[i].toUpperCase() == "Z") {
          tennam[i] = 7;
        } else if (_text2[i].toUpperCase() == 'H' ||
            _text2[i].toUpperCase() == 'P' ||
            _text2[i].toUpperCase() == "Y") {
          tennam[i] = 8;
        } else if (_text2[i].toUpperCase() == 'I' ||
            _text2[i].toUpperCase() == 'R') {
          tennam[i] = 9;
        }
      }
    });
    xuly();
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
            controller: _TennuController,
            style: TextStyle(fontSize: 30),
            decoration: InputDecoration(  
                    border: OutlineInputBorder(),  
                    labelText: 'Your Name',  
                    hintText: 'Enter Your First Name',  
                  ),
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
              controller: _TenNamController,
              style: TextStyle(fontSize: 30),
              decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Your Love',  
                      hintText: 'Enter Your First Name Love',  
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
              Text('$_text1',style: TextStyle(fontSize: 64),),
              Icon(Icons.favorite,color: Colors.red,size: 64,),
              Text('$_text2',style: TextStyle(fontSize: 64),),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '$_Ketqua',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
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
