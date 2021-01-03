import 'package:flutter/material.dart';
import 'package:cetquiz_app/Screens/HomePage.dart';

void gotoHomePage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => HomePage()),
  );
}
class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 74, 142,1.0),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/b.png',
              fit: BoxFit.contain,
              height: 25,
            ),

            Container(
                padding: const EdgeInsets.all(8.0), child: Text('BOĞAZİÇİ UNIVERSITY',
              style: TextStyle(fontFamily: 'b',color:Colors.white),
            )
            ),],),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Text(
                ' Hoşgeldin, kaç soru çözmek istersin?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'a',
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),

            color: Color.fromRGBO(237, 237, 237,1.0),
          ),
          SizedBox(
            height: 60,
          ),

       Padding(
         padding: EdgeInsets.all(15),
            child:
              TextField(

                  maxLength: 2, style: TextStyle(color:Colors.black87,fontFamily: 'a',),decoration: InputDecoration(border: OutlineInputBorder(),),
                  keyboardType: TextInputType.number),
       ),

         // RaisedButton(
            //color: Color.fromRGBO(237, 237, 237,1.0),

           /* child: TextField(
              maxLength: 2,obscureText: true, style: TextStyle(color:Colors.white,fontFamily: 'a',color: Color.fromRGBO(237, 237, 237,1.0),),
            keyboardType: TextInputType.number),
         // ), */
          RaisedButton(
            color: Color.fromRGBO(19, 74, 142,1.0),
            onPressed: () {
              gotoHomePage(context);
            },
            child: Text('TAMAM', style: TextStyle(color:Colors.white,fontFamily: 'a',),
            ),),
        ],

      ),
      // backgroundColor: Color.fromRGBO(237, 237, 237,1.0),
    );
  }
}