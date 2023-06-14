class FeaturedCard {
  String name;
  String desc;
  String ingridients;
  int rate;
  double price;
  String imgUrl;

  FeaturedCard(
      {required this.name,
      required this.rate,
      required this.imgUrl,
      required this.desc,
      required this.ingridients,
      required this.price});
}

var featuredCard = [
  FeaturedCard(
      name: "Salad",
      rate: 4,
      imgUrl: "assets/feature-1.png",
      desc:
          "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingridients: "Seledri, telur, blueberry, madu.",
      price: 15000),
  FeaturedCard(
      name: "Buah Roti",
      rate: 4,
      imgUrl: "assets/feature-2.jpeg",
      desc:
          "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingridients: "Ayam, air, garam",
      price: 40000),
  FeaturedCard(
      name: "Bakwan",
      rate: 4,
      imgUrl: "assets/feature-3.jpeg",
      desc:
          "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingridients: "tepung terigu, sayur, garam",
      price: 30000),
  FeaturedCard(
      name: "Sambel Goreng",
      rate: 4,
      imgUrl: "assets/feature-4.jpeg",
      desc:
          "Makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingridients: "kedelai, air, garam",
      price: 80000),
];
