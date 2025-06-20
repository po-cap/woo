import 'package:get/get.dart';
import 'package:woo/common/routers/index.dart';
import 'package:woo/pages/index.dart';
import 'package:woo/pages/system/main/binding.dart';



class RoutePages {

  // 歷史紀錄
  static List<String> history = [];

  // 观察者
  static RouteObservers observer = RouteObservers();

  // 列表
  static List<GetPage> list = [
      GetPage(
        name: RouteNames.cartCartIndex,
        page: () => const CartIndexPage(),
      ),
      GetPage(
        name: RouteNames.cartBuyDone,
        page: () => const BuyDonePage(),
      ),
      GetPage(
        name: RouteNames.goodsCategory,
        page: () => const CategoryPage(),
      ),
      GetPage(
        name: RouteNames.goodsHome,
        page: () => const HomePage(),
      ),
      GetPage(
        name: RouteNames.goodsProductDetails,
        page: () => const ProductDetailsPage(),
      ),
      GetPage(
        name: RouteNames.goodsProductList,
        page: () => const ProductListPage(),
      ),
      GetPage(
        name: RouteNames.msgMsg,
        page: () => const MsgPage(),
      ),
      GetPage(
        name: RouteNames.myLanguage,
        page: () => const LanguagePage(),
      ),
      GetPage(
        name: RouteNames.myMyAddress,
        page: () => const MyAddressPage(),
      ),
      GetPage(
        name: RouteNames.myMyIndex,
        page: () => const MyIndexPage(),
      ),
      GetPage(
        name: RouteNames.myOrderDetails,
        page: () => const OrderDetailsPage(),
      ),
      GetPage(
        name: RouteNames.myOrderList,
        page: () => const OrderListPage(),
      ),
      GetPage(
        name: RouteNames.myProfileEdit,
        page: () => const ProfileEditPage(),
      ),
      GetPage(
        name: RouteNames.searchFilter,
        page: () => const FilterPage(),
      ),
      GetPage(
        name: RouteNames.searchIndex,
        page: () => const IndexPage(),
      ),
      GetPage(
        name: RouteNames.systemLogin,
        page: () => const LoginPage(),
      ),
      GetPage(
        name: RouteNames.systemMain,
        page: () => const MainPage(),
        binding: MainBinding()
      ),
      GetPage(
        name: RouteNames.systemRegister,
        page: () => const RegisterPage(),
      ),
      GetPage(
        name: RouteNames.systemRegisterPin,
        page: () => const RegisterPinPage(),
      ),
      GetPage(
        name: RouteNames.systemSplash,
        page: () => const SplashPage(),
      ),
      GetPage(
        name: RouteNames.stylesStylesIndex,
        page: () => const StylesIndexPage(),
      ),
      GetPage(
        name: RouteNames.systemWelcome,
        page: () => const WelcomePage(),
      ),
      GetPage(
        name: RouteNames.stylesCheckbox,
        page: () => const CheckboxPage(),
      ),
  ];
}
