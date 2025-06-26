import 'dart:io';
import 'package:consol_shopping_mall/product_class.dart';

// ShoppingMall 클래스 정의

class ShoppingMall {
  List<Product> products = [
    Product('셔츠', 45000),
    Product("원피스", 30000),
    Product("반팔티", 35000),
    Product("반바지", 38000),
    Product("양말", 500),
  ];
  List<int> cartItems = [];
  List<String> cartItemsName = [];
  int totalprice = 0;

  // showProducts 함수

  void showProducts() {
    for (Product product in products) {
      print('${product.name} / ${product.price}원');
    }
  }

  // addTocart 함수

  void addTocart() {
    print('상품 이름을 입력해 주세요!');
    String? nameInput = stdin.readLineSync();

    print('상품 개수를 입력해 주세요!');
    String? countInput = stdin.readLineSync();
    var count = int.tryParse('$countInput');

    try {
      var matchResult = products.where(
        (product) => product.name == nameInput,
      ); // 같으면 true, 틀리면 false

      if (matchResult.isEmpty) {
        print('입력 값이 올바르지 않아요!');
      } else if (count == null || count <= 0) {
        print('0개보다 많은 개수의 상품만 담을 수 있어요!');
      } else {
        Product product = matchResult.first;
        var addPrice = product.price * count;
        cartItems.add(addPrice);
        cartItemsName.add(nameInput!);
        print('장바구니에 상품이 담겼어요!');
      }
    } catch (e) {
      print(e);
    }
  }

  // showTotal 함수

  void showTotal() {
    totalprice = cartItems.fold(0, (a, b) {
      return a + b;
    });
    if (totalprice > 0) {
      print('장바구니에 ${cartItemsName.join(',')}가 담겨있네요. 총 가격 $totalprice원 입니다 !');
    } else {
      print('장바구니가 비어있어요!');
    }
  }

  // clearCart 함수

  void clearCart() {
    if (totalprice > 0) {
      cartItems.clear();
      print('장바구니를 초기화합니다.');
    } else {
      print('이미 장바구니가 비어있습니다.');
    }
  }
}
