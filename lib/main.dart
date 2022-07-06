import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile App",
      home: Scaffold(
        body: Stack(
          children: [
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
            Positioned(
              left: 15,
              top: 190,
              child: Column(
                children: [
                  CircleAvatar(
                    // maxRadius: 80,
                    backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/photos/happy-attractive-couple-walking-on-beautiful-sunny-beach-picture-id1333263336?b=1&k=20&m=1333263336&s=170667a&w=0&h=LR_7yHa0MV4_F-AXoRiP7SZcj4FSgd7SlX8pxTmrNNc=",
                    ),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "MR UMAIR",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "A Flutter Developer",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 23,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(title: "Simple App"),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        title: "Animated App",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(title: "Firebase App"),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        title: "Bloc Pattern App",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButton(title: "Api Integeration"),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        title: "Updation",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomButton(
                        title: "Design pattern",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade900,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17))),
                      child: Text(
                        "Hire ",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade200),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 3.0, color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.grey.shade400,
          fontSize: 22,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width + 200, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
