import 'package:flutter/material.dart';

import 'resultpagesplitbill.dart';

class Firstpage extends StatefulWidget {

   double tip;
   double friend;
   String tax;
   String total;
  // const Firstpage({Key? key}) : super(key: key);
   Firstpage(
       this.tip,
       this.friend,
       this.tax,
       this.total

       );
  @override

  State<Firstpage> createState() => _FirstpageState();

}

class _FirstpageState extends State<Firstpage> {
  TextEditingController taxC = TextEditingController();
  // double friend = 0;
  // double tip = 0;
  // String total = '';
  double _currentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Split Bill',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: Column(
              children: [
                Container(
                  color: Color(0xfffec107),
                  width: double.infinity,
                  height: 130,
                  child: Row(
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 160,
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '${widget.total}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        width: 175,
                        height: 130,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Text(
                                      'Friends',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '${widget.friend}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tax',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 60),
                                      child: Text(
                                        '${taxC.text}%',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 65,
                                    ),
                                    child: Text(
                                      'Tip',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '\$${widget.tip}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    "How Many friends ?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Slider(
                  activeColor: Color(0xfffec107),
                  value: _currentSliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                      widget.friend = _currentSliderValue;
                    });
                  },
                  max: 100,
                  divisions: 10,
                  label: _currentSliderValue.round().toString(),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 170,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfffec107),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'TIP',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff9e9e9e)),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        widget.tip = widget.tip + 2;
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Text(
                                  '\$2',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xff9e9e9e)),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {
                                        if (widget.tip > 0) {
                                          widget.tip = widget.tip - 2;
                                        }
                                      });
                                    },
                                    style: TextButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40))),
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 80,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfffec107)),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextField(
                            controller: taxC,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              labelText: 'Tax in %',
                            ),
                          ),
                        ),
                        // child: Padding(
                        //   padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                        //   child: Text('Tax in % $tax'),
                        // ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '1';
                                } else {
                                  widget.total = widget.total + '1';
                                }
                              });
                            },
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '2';
                                } else {
                                  widget.total = widget.total + '2';
                                }
                              });
                            },
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total == "") {
                                  widget.total = '';
                                }
                                widget.total = widget.total + '3';
                              });
                            },
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                 widget.total = '4';
                                } else {
                                  widget.total = widget.total + '4';
                                }
                              });
                            },
                            child: Text(
                              '4',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '5';
                                } else {
                                  widget.total = widget.total + '5';
                                }
                              });
                            },
                            child: Text(
                              '5',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '6';
                                } else {
                                  widget.total = widget.total + '6';
                                }
                              });
                            },
                            child: Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '7';
                                } else {
                                  widget.total = widget.total + '7';
                                }
                              });
                            },
                            child: Text(
                              '7',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '8';
                                } else {
                                  widget.total = widget.total + '8';
                                }
                              });
                            },
                            child: Text(
                              '8',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '9';
                                } else {
                                  widget.total = widget.total + '9';
                                }
                              });
                            },
                            child: Text(
                              '9',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '';
                                } else {
                                  widget.total = widget.total + '.';
                                }
                              });
                            },
                            child: Text(
                              '.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                if (widget.total.isEmpty) {
                                  widget.total = '';
                                } else {
                                  widget.total = widget.total + '0';
                                }
                              });
                            },
                            child: Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                      Container(
                        width: 100,
                        height: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Color(0xffdddddd))),
                        child: TextButton(
                            onPressed: () {
                              setState(() {
                                // if (total.isEmpty) {
                                //   total = '-';
                                // }
                                widget.total='';
                                widget.tip=0;
                                widget.friend=0;
                                taxC.text='';
                              });
                            },
                            child: Text(
                              'C',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, right: 5),
                  child: Container(
                      width: 290,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.green,
                      ),
                      child: TextButton(
                        child: Text(
                          'Split Bill',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 30),
                        ),
                        onPressed: () {
                          if(widget.friend==0|| taxC.text.isEmpty||widget.tip==0||widget.total==''){
                            return null;
                          }else{
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Testing(Rfriend: _currentSliderValue,Rtip: widget.tip,Rtotal: widget.total,Rtax: taxC,)));
                            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Testing(Rfriend: _currentSliderValue,Rtip: widget.tip,Rtotal: widget.total,Rtax: taxC,)));
                          }

                        },
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
