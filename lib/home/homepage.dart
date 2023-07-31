import 'package:flutter/material.dart';
import 'package:qur2an_app/screens/after_sleep.dart';
import 'package:qur2an_app/screens/morning.dart';
import 'package:qur2an_app/screens/salah.dart';

import '../screens/doaa.dart';
import '../screens/night.dart';
import 'dictionary.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 100,
              margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
              decoration: BoxDecoration(
                color: Colors.brown[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return Dictionary();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Transform.scale(
                    scale: 0.7,
                    child: Image.asset('images/quran.png'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigit init
                      gator.of(context).push(MaterialPageRoute(builder: (context){
                        return salah();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'الصلاه',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return doaa();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[400],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'دعاء الختم',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return sftersleep();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'قبل النوم',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return morning();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'اذكار الصباح',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return night();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'اذكار المساء',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.brown[100],
              height: 40,
              thickness: 5,
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'images/aya.jpg', // Replace with the path to your image asset
                fit: BoxFit.cover, // Make the image fill the container while maintaining aspect ratio
              ),
            ),
          ],
        ),
      ),
    );
  }
}


