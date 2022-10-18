import 'package:flutter/material.dart';
import 'package:splitbill/splitbillfirstpage.dart';

class Testing extends StatefulWidget {
  double Rfriend;
  TextEditingController Rtax;
  double Rtip;
  String Rtotal;
  Testing({
    required this.Rfriend,
   required this.Rtax,
   required this.Rtip,
   required this.Rtotal,
  });

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override

  double divide() {
    double equallydivide;
    double totalamount;
    totalamount = double.parse(widget.Rtotal) + double.parse(widget.Rtax.text);
    equallydivide = (double.parse(widget.Rtotal) + totalamount + widget.Rtip) /
        widget.Rfriend;
    return equallydivide;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'Result',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              height: 150,
              color: Color(0xfffec107),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: Color(0xfffec107),
                        width: 180,
                        height: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Equally Divide ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '\$${divide().toStringAsFixed(3)}',
                                        // '${divide()}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 29),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 160,
                    height: 150,
                    color: Color(0xfffec107),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Friends',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Text(
                                '${widget.Rfriend}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Text(
                            '${widget.Rtax.text}%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tip',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              '\$${widget.Rtip}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Everybody Should Pay \$${divide().toStringAsFixed(3)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
              ),
              child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage(friend: 0,tip: 0,total: '',)));
Navigator.push(context, MaterialPageRoute(builder: (context)=>Firstpage(0, 0, '', '')));
                },
                child: Text(
                  'Calculate Again ?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
