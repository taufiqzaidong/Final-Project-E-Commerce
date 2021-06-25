import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:gowallpaper/models/user.dart';
import 'package:gowallpaper/screens/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:gowallpaper/screens/select.dart';
import 'package:gowallpaper/screens/workshopowner.dart';
import 'package:provider/provider.dart';
//import 'package:gowallpaper/screens/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {

  int userType=0;
 
  Future getUsersType(String uid)async{
    final usersRef = FirebaseFirestore.instance.collection('Users');
    
      /*await usersRef.doc(uid).get().then((ds){
        userType=ds.data['userType'];
        print(userType);
      }).catchError((e){
        print(e);
      });*/
      DocumentSnapshot variable1=await usersRef.doc(uid).get();
      userType=variable1['userType'];
      print(userType);
   
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserId>(context);
    
  
    if (user == null) {
      return Authenticate();
    } else {
      String uid=user.uid;
      getUsersType(uid);
      if(userType==1){
        return WorkshopOwner();
      }
      if(userType==0){
        return SelectPage();
      }
      
    }
    //return either home or authenticate
    
  }
}
