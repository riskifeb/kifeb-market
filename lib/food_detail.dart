import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kifeb/data.dart';
import 'package:kifeb/rating_component.dart';

class FoodDetailCard extends StatefulWidget {
  final FeaturedCard itemsCard;

  const FoodDetailCard({super.key, required this.itemsCard});

  @override
  State<FoodDetailCard> createState() => _FoodDetailCardState(items: itemsCard);
}

class _FoodDetailCardState extends State<FoodDetailCard> {
  final FeaturedCard items;
  int count = 1;

  _FoodDetailCardState({required this.items});

  void decreaseCount() {
    count -= 1;
    setState(() {});
  }

  void increaseCount() {
    count += 1;
    setState(() {});
  }

  double totalPrice() {
    return count * items.price;
  }

  String formatCurrency(double amount) {
    final formatter = NumberFormat('#,###');
    return formatter.format(amount);
  }

  void _createOrder() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pesanan Dibuat'),
          content: const Text("Pesanan Anda Siap dikirim"),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            items.imgUrl,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(25, 40, 20, 40),
            margin: const EdgeInsets.only(top: 260),
            // height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          items.name,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        const Row(
                          children: [StarRating(), Text("4")],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: count == 1 ? null : decreaseCount,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.amber)),
                            child: const Center(
                                child: Icon(
                              Icons.remove,
                              size: 16,
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(count.toString()),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: increaseCount,
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(width: 1, color: Colors.amber)),
                            child: const Center(
                                child: Icon(
                              Icons.add,
                              size: 16,
                            )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  items.desc,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontFamily: "Poppins-Regular"),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Bahan Bahan",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins-Regular"),
                  textAlign: TextAlign.left,
                ),
                Text(
                  items.ingridients,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontFamily: "Poppins-Regular"),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "total price",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontFamily: "Poppins-Regular"),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          "Rp. ${formatCurrency(totalPrice())}",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Poppins-Regular"),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    ElevatedButton(
                        onPressed: _createOrder,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            minimumSize: const Size(170, 40)),
                        child: const Text("Pesan")),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
