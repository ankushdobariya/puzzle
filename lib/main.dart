import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:puzzle/data.dart';


void main()
{
  runApp(MaterialApp(
    home:puzzle()
    ,)
  );
}
class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  _puzzleState createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {

  List list=[1,2,3,4,5,6,7,8,0];
  List templist=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    templist.addAll(list);
    print("templist=$templist");
    list.shuffle();
    print(list);

  }
  win()
  {
    if(listEquals(list, templist))
    {
      print("win");
    }
  }

  @override
  Widget build(BuildContext context) {
    datasize(context);


    return Scaffold(
      appBar: AppBar(title: (Text("puzzle")),),
      body: Column(
        children: [
          SizedBox(width: datasize.width,
            height: datasize.height!*0.15,
            child: Row(children: [
              Container(width: (datasize.width!-60)/3,
                height: (datasize.width!-60)/3,
                color: Colors.black38,
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text("moves"),
              ),
              Container(width: (datasize.width!-60)/3,
                height: (datasize.width!-60)/3,
                color: Colors.black38,
                margin: EdgeInsets.all(10),
              ),
              Container(width: (datasize.width!-60)/3,
                height: (datasize.width!-60)/3,
                color: Colors.black38,
                margin: EdgeInsets.all(10),
              ),
            ], ),
          ),
          Container(
            color: Colors.grey,
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        if(list[1]==0) {
                          list[1] = list[0];
                          list[0] = 0;
                        }
                        if(list[3]==0)
                          {
                            list[3]=list[0];
                            list[3]=0;
                          }

                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: list[0]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 5,bottom: 5),
                        alignment: Alignment.center,
                        child: list[1]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: list[2]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        alignment: Alignment.center,
                        child: list[3]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0,0,0, 0),
                        alignment: Alignment.center,
                        child: list[5]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.only(left: 5,right: 5),
                        alignment: Alignment.center,
                        child: list[6]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: list[7]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                        alignment: Alignment.center,
                        child: list[8]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                    InkWell(onTap: (){
                      setState(() {
                        if(list[0]==0)
                        {
                          list[0]=list[1];
                          list[1]=0;
                        }
                      });
                    },
                      child: Container(
                        width: (datasize.width!-30)/3,
                        height: (datasize.width!-30)/3,
                        color: Colors.white,
                        margin: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        child: list[0]!=0?Text("${list[0]}"):Text("",style: TextStyle(color: Colors.white70),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
