import 'package:flutter/material.dart';
import 'package:flutterdemo/size_config.dart';

import 'delayed_animation.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: SizeConfig.blockSizeHorizontal * 100,
            height: SizeConfig.blockSizeVertical * 100,
            alignment: FractionalOffset.bottomCenter,
            child: Image.asset(
              'assets/back.png',
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                DelayedAnimation(child: Image.asset('assets/logo.png'),delay: 1000,),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                DelayedAnimation(
                  delay: 1500,
                                  child: Text(
                    'Welcome to Sprout',
                    style: TextStyle(
                        fontFamily: "Poppins", fontWeight: FontWeight.bold),
                  ),
                ),
                DelayedAnimation(
                  delay: 1750,
                                  child: Text(
                    'Login Here',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.safeBlockHorizontal * 6),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                DelayedAnimation(
                  delay: 2000,
                                  child: Row(
                    children: <Widget>[
                      Text(
                        'MY ROLE',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                  ),
                ),
                DelayedAnimation(
                  delay: 2250,
                                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      OutlineButton(
                        child: Text("Teacher",style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),),
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      OutlineButton(
                        child: Text("Parent",style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),),
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      OutlineButton(
                        child: Text("Admin",style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),),
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                DelayedAnimation(
                  delay: 2500,
                                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text('USER ID',style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                  ),
                ),
                DelayedAnimation(
                  delay: 2750,
                                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      suffixIcon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 2,
                ),
                DelayedAnimation(
                  delay: 3000,
                                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'PASSWORD',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                DelayedAnimation(
                  delay: 3250,
                                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical * 4,
                ),
                DelayedAnimation(
                  delay: 3500,
                                  child: FlatButton(
                    onPressed: null,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3,horizontal: 15),
                      child: Text(
                        'GET IN CLASSROOM',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 3,
                            color: Colors.blue),
                      ),
                    ),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
