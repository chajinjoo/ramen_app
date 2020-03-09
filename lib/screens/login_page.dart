import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Image(
                image: AssetImage('assets/images/ramen.png'),
                fit: BoxFit.cover,
              ),
            ),
            InputTextField(
              icon: Icons.email,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(
              height: 10,
            ),
            InputTextField(
              icon: Icons.vpn_key,
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ForgotText(forgotText: '아이디∙비밀번호 찾기'),
                ForgotText(forgotText: '회원가입'),
              ],
            ),
          ],
        ));
  }
}

//재사용 아디비번찾기, 회원가입
class ForgotText extends StatelessWidget {
  final String forgotText;

  ForgotText({this.forgotText});

  @override
  Widget build(BuildContext context) {
    return Text(
      forgotText,
      style: TextStyle(fontSize: 16),
    );
  }
}

//재사용 인풋필드
class InputTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;

  InputTextField({this.icon, this.hintText, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 380,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.amberAccent.withOpacity(1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Center(
                child: Icon(
                  icon,
                  size: 32,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 8.0,
                right: 8.0,
                bottom: 8.0,
              ),
              width: 1.0,
              height: 64.0,
              color: Colors.black26,
            ),
            Flexible(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //텍스트 필드 길이 조정하려면 컨테이너로 감싸고 width 줘야함
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 250.0,
                    child: TextField(
                      obscureText: obscureText,
                      decoration: InputDecoration(
                          //labelText 먹이면 텍스트 효과가 상단에 남는다
                          hintText: hintText),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
