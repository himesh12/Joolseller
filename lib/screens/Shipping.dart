import 'package:flutter/material.dart';
import 'package:seller/screens/categoryslidebar.dart';
//import 'package:seller/screens/categoryslidebar.dart';


class ShippingWidget extends StatefulWidget {
 // ShippingWidget({Key key}) : super(key: key);

  @override
  _ShippingWidgetState createState() => _ShippingWidgetState();
}

class _ShippingWidgetState extends State<ShippingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
             Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> CategorysidebarWidget()),
                     ); },
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.transparent,
                        )
                      ],
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    alignment: Alignment(-0.050000000000000044, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(05, 15, 0, 15),
                      child:  Icon(
    Icons.filter_list,
    color: Color(0xFF180B0B),
    size: 60,
                        ),
                      ),
                    ),
                  ),
                ),
              
                   
                    
                     
                
               Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assests/images/pic4.png',
                      ).image,
                    ),
                  ),
                )
              ],
            ),
           ] ),
     ), ),);
  }
}