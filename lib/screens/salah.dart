import 'package:flutter/material.dart';
class salah extends StatelessWidget {
  const salah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Replace with your desired background color
        child: Stack(
          children: [

            Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'images/elslah.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Image.asset(
                'images/elslah.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
