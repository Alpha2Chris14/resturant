import 'package:flutter/cupertino.dart';

import 'meal.dart';

class Meals extends ChangeNotifier {
  final menu = [
    Meal(
      id: 1,
      title: "Fried Rice and Chicken",
      imageUrl:
          "https://nkechiajaeroh.com/wp-content/uploads/2020/12/Nigerian-fried-rice-recipe-main-photo-3.jpg",
      price: 34.55,
      ratingCount: 30,
      duration: 20,
    ),
    Meal(
      id: 2,
      title: "Moi Moi",
      imageUrl:
          "https://pulses.org/images/com_yoorecipe/422/cropped-moi-moi-rollup.jpg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 3,
      title: "Jollof Rice and Grild Beef",
      imageUrl:
          "https://i0.wp.com/afrovitalityeats.com/wp-content/uploads/2016/06/Jollof-Rice-with-Grilled-Salmon.jpg?resize=1200%2C900&ssl=1",
      price: 30.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 4,
      title: "Fufu/Eba and Ebusi Soup",
      imageUrl:
          "https://allnigerianfoods.com/wp-content/uploads/egusi_soup-1.jpg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 5,
      title: "Amala and Ewedu Soup",
      imageUrl:
          "https://i0.wp.com/newsbreak.ng/wp-content/uploads/2022/06/amala.jpg?fit=16001068&ssl=1",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 6,
      title: "Beans and Plantain",
      imageUrl:
          "https://images.getrecipekit.com/20221019203431-beans-26-plantain-1.jpg?aspect_ratio=16:9&quality=90",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 7,
      title: "Suya",
      imageUrl:
          "https://www.seriouseats.com/thmb/3UFS8-r5ayxHlEC7_DF2HzQ7D-Y=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2020__10__20201015-Suya-sho-spaeth-1-78c58be723c944068b3f85c8ff4f9d23.jpg",
      price: 60.55,
      ratingCount: 140,
      duration: 20,
    ),
    Meal(
      id: 8,
      title: "CatFish Pepper Soup",
      imageUrl:
          "https://dooneyskitchen.com/wp-content/uploads/2021/05/fresh-fish-peppersoup.jpg",
      price: 34.55,
      ratingCount: 80,
      duration: 20,
    ),
    Meal(
      id: 9,
      title: "Porridge Yam",
      imageUrl:
          "https://healthguide.ng/wp-content/uploads/2022/04/images-2022-04-11T173829.373.jpeg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 10,
      title: "Yam and Egg",
      imageUrl:
          "https://nkechiajaeroh.com/wp-content/uploads/2018/05/Nigerian-Breakfast-main-photo-1-800x600.jpg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 11,
      title: "Ofada Rice",
      imageUrl:
          "https://lyndishes.com/wp-content/uploads/2020/09/WhatsApp-Image-2020-09-16-at-8.48.35-AM.jpeg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 12,
      title: "Rice and Stew",
      imageUrl:
          "https://i.pinimg.com/originals/0f/37/33/0f3733be4e387fa6e9d8663a1a4474bb.png",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 13,
      title: "Small Chops",
      imageUrl:
          "https://dmn-dallas-news-prod.cdn.arcpublishing.com/resizer/2QKAnsUlZqIcRYqExmXJlOOBNxQ=/1660x934/filters:focal(1735x3264:1745x3254):no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/dmn/MIQLDU2FKRFBBJNXS7DJ6JGICE.jpeg",
      price: 14.55,
      ratingCount: 40,
      duration: 20,
    ),
    Meal(
      id: 14,
      title: "Chicken and Chips",
      imageUrl: "https://thumbs.dreamstime.com/b/chicken-chips-5794877.jpg",
      price: 14.55,
      ratingCount: 210,
      duration: 30,
    ),
  ];

  List get menuItem {
    return [...menu];
  }
}
