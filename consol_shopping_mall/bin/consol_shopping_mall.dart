import 'dart:io'; //stdin.readLineSync() 활용 시 필요

// ShoppingMall 클래스 정의 -2 시도하다가 메뉴로 먼저 진행
/* class ShoppinMall{
  List<Product>; // 데이터 담는 방법에 대해서 Map으로 하고 싶은데 어떻게 해야 할 지 고민 중
  int totalprice = 0; // OK

  //
  void showProducts(){
      Map<String, int> productlist(name, price){
        '셔츠' : 45000, 
        '원피스' : 30000, 
        '반팔티' : 35000,
        '반바지' : 38000,
        '양말' : 500
        };

    for(String product in productlist[product])
  }

  void addTocart(){}
  void showTotal(){}

}
*/

// Product class 정의
class Product {
  String name;
  int price;

  Product(this.name, this.price);
}

//함수 실행 부분
void main() {
  bool status = true;
  while (status) {
    print(
      "------------------------------------------------------------------------------------\n [1]상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 총 가격 보기 / [4] 프로그램 종료 \n------------------------------------------------------------------------------------",
    );
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        print('[1]상품 목록 보기');
        //showProducts();
        break;

      case '2':
        print('[2] 장바구니에 담기');
        //addTocart();
        break;

      case '3':
        print('[3] 장바구니에 담긴 총 가격 보기');
        //showTotal();
        break;
      case '4':
        print('정말 종료하시겠습니까?');
        String? quitalert = stdin.readLineSync();
        if (quitalert == '5') {
          print('이용해 주셔서 감사합니다 ~ 안녕히 가세요 !');
          status = false;
        } else {
          print('종료하지 않습니다.');
        }
        break;

      default:
        print('지원하지 않는 기능입니다! 다시 시도해 주세요 ..');
    }
  }
}
