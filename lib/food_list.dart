import 'package:flutter/material.dart';
import 'package:kifeb/data.dart';
import 'package:kifeb/featured_food.dart';
import 'package:kifeb/food_detail.dart';
import 'package:kifeb/recomended_food.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "KIFEB Foods",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              Text(
                "Ayo cari makanan favoritmu",
                style: TextStyle(color: Colors.black26, fontSize: 14),
              )
            ],
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 130,
          actions: [Image.asset("assets/profile.png")],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                height: (Orientation == Orientation.landscape
                    ? MediaQuery.of(context).size.height * 0.75
                    : MediaQuery.of(context).size.height * 0.30),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final FeaturedCard itemCards = featuredCard[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FoodDetailCard(
                            itemsCard: itemCards,
                          );
                        }));
                      },
                      child: CardItem(
                        itemCards: itemCards,
                      ),
                    );
                  },
                  itemCount: featuredCard.length,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Rekomendasi Untukmu",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins-Regular",
                    fontWeight: FontWeight.w600,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Sop Kambing",
                          rate: "4",
                          imgUrl: "assets/list-1.png",
                          price: "Rp. 40.000",
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Bakwan",
                          rate: "4",
                          imgUrl: "assets/list-2.png",
                          price: "Rp. 30.000",
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Tempe",
                          rate: "4",
                          imgUrl: "assets/list-3.png",
                          price: "Rp. 80.000",
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Salad Segar",
                          rate: "4",
                          imgUrl: "assets/feature-1.png",
                          price: "Rp. 15.000",
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Salad Segar",
                          rate: "4",
                          imgUrl: "assets/feature-1.png",
                          price: "Rp. 15.000",
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: RecomendedItem(
                          name: "Salad Segar",
                          rate: "4",
                          imgUrl: "assets/feature-1.png",
                          price: "Rp. 15.000",
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
