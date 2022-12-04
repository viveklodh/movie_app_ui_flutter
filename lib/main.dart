import 'package:flutter/material.dart';

void main() {
  runApp(MovieUi());
}

class MovieUi extends StatelessWidget {
  const MovieUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset("images/1.png"),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                              Color(0x00f5f5f5),
                              Color(0xfff5f5f5)
                            ])),
                      )
                    ],
                  ),
                  Icon(
                    size: 120,
                    Icons.play_circle_outline_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'images/2.png',
                      height: 220,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1994 Comdedy/Romance",
                          style: TextStyle(
                              color: Colors.lightBlueAccent, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Andaz Apna Apna",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Andaz Apna Apna is a 1994 Indian Hindi-language comedy film directed by Rajkumar Santoshi and produced by Vinay Kumar Sinha. It stars Aamir Khan, Salman Khan, Raveena Tandon, Karishma Kapoor, Paresh Rawal (in a dual role) and Shakti Kapoor in lead roles.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  Text(
                    "cast : ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "Salman , Amir, karishma , ravina",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "director : ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "Rajkumar Santoshi",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "awards : ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "Best Comedian	, Best Film.",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "language : ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "hindi",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    "country : ",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    "India",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  )
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Text(
                "More Movie Posters",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/${index + 2}.png',
                            height: 190,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
