import 'dart:io'; //stdin.readLineSync() 활용 시 필요
import 'package:consol_shopping_mall/shopping_mall_class.dart';

//함수 실행 부분
void main() {
  ShoppingMall shop = ShoppingMall();
  bool status = true;
  while (status) {
    String dash = '-' * 80;
    print(
      '$dash\n [1]상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 총 가격 보기 / [4] 프로그램 종료 / [6] 장바구니 비우기 \n$dash',
    );

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('[1]상품 목록 보기');
        shop.showProducts();
        break;

      case '2':
        print('[2] 장바구니에 담기');
        shop.addTocart();
        break;

      case '3':
        print('[3] 장바구니에 담긴 총 가격 보기');
        shop.showTotal();
        break;
      case '4':
        print('정말 종료하시겠습니까? 종료하려면 5를 눌러주세요.');
        String? quitalert = stdin.readLineSync();
        if (quitalert == '5') {
          print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
          status = false;
        } else {
          print('종료하지 않습니다.');
        }
        break;

      case '6':
        print('[6] 장바구니 비우기');
        shop.clearCart();
        break;

      default:
        print('지원하지 않는 기능입니다! 다시 시도해 주세요 ..');
    }
  }
}
