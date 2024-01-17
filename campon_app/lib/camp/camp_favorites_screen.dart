import 'package:campon_app/common/footer_screen.dart';
import 'package:flutter/material.dart';

class CampFavoritesScreen extends StatefulWidget {
  const CampFavoritesScreen({super.key});

  @override
  State<CampFavoritesScreen> createState() => _CampFavoritesScreenState();
}

class _CampFavoritesScreenState extends State<CampFavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo2.png",
          width: 110,
          height: 60,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                '찜한 캠핑장',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text("Past Transaction",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              SizedBox(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("28 Mar 2022, Thu",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontFamily: "Gilroy Medium")),
                                  Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.green[50]),
                                    child: const Center(
                                      child: Text(
                                        "Finished",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontFamily: "Gilroy Bold"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/Rimuru.png",
                                    height: 75,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Hyatt Washington Hotel",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontFamily: "Gilroy Bold")),
                                      const SizedBox(height: 6),
                                      Text("4 Guests, 2 Room",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 8),
                              cupon(
                                text1: "Total Price",
                                text2: "\$274",
                                buttontext: "삭제",
                                onClick: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => Favourite()));
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              FooterScreen(),
            ],
          ),
        ),
      ),
    );
  }

  cupon({text1, text2, buttontext, Function()? onClick}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontFamily: "Gilroy Medium")),
            const SizedBox(height: 4),
            Text(text2,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontFamily: "Gilroy Bold")),
          ],
        ),
        InkWell(
          onTap: onClick,
          child: Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.red),
            child: Center(
              child: Text(
                buttontext,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "Gilroy Bold"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
