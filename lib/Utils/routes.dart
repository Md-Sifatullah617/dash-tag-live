import 'package:dash_and_tag_web_site/Pages/all_product_show_case/accessories_page.dart';
import 'package:dash_and_tag_web_site/Pages/contact_us_page/contact_us_root.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/men_jeans/mens_jeans.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/polo_shirts/polo_shirts.dart';
import 'package:dash_and_tag_web_site/Pages/profile_page/profile_page.dart';
import 'package:get/get.dart';
import '../Pages/dash_and_tag_resources/dash_and_tag_resouces_root.dart';
import '../Pages/home_page/home_page_root.dart';
import '../Pages/mens_sector/tshirt_page/mens_tshirt_root.dart';
import '../Pages/mission_vission_page/mission_vission_root.dart';
import '../Pages/our_clients_page/our_clients_root.dart';
import '../Pages/services_sector/services_page_root.dart';

class AppRoutes {
  static const String home = '/home';
  static const String aboutResources = '/about_resources';
  static const String missionVision = '/mission_vision';
  static const String profile = '/profile';

  static const String mens = '/products/mens';
  static const String mensjeans = '/products/mens/jeans';
  static const String menstshirts = '/products/mens/tshirts';
  static const String menspoloshirts = '/products/mens/poloshirts';
  static const String mensshirtspants = '/products/mens/shirtpants';
  static const String menshoodies = '/products/mens/hoodies';
  static const String mensshortscargo = '/products/mens/shortscargo';
  static const String mensjackets = '/products/mens/jackets';
  static const String menssweaters = '/products/mens/sweaters';
  //same for womens
  static const String womens = '/products/womens';
  static const String womensjeans = '/products/womens/jeans';
  static const String womenstshirts = '/products/womens/tshirts';
  static const String womenspoloshirts = '/products/womens/poloshirts';
  static const String womensshirtspants = '/products/womens/shirtpants';
  static const String womenshoodies = '/products/womens/hoodies';
  static const String womensshortscargo = '/products/womens/shortscargo';
  static const String womensjackets = '/products/womens/jackets';
  static const String womenssweaters = '/products/womens/sweaters';
  //same for boys
  static const String boys = '/products/boys';
  static const String boysjeans = '/products/boys/jeans';
  static const String boystshirts = '/products/boys/tshirts';
  static const String boyspoloshirts = '/products/boys/poloshirts';
  static const String boysshirtspants = '/products/boys/shirtpants';
  static const String boyshoodies = '/products/boys/hoodies';
  static const String boyshortscargo = '/products/boys/shortscargo';
  // static const String boysjackets = '/products/boys/jackets';
  static const String boyssweaters = '/products/boys/sweaters';
  //same for girls
  static const String girls = '/products/girls';
  static const String girlsjeans = '/products/girls/jeans';
  static const String girlstshirts = '/products/girls/tshirts';
  static const String girlspoloshirts = '/products/girls/poloshirts';
  static const String girlsshirtspants = '/products/girls/shirtpants';
  static const String girlshoodies = '/products/girls/hoodies';
  static const String girlshortscargo = '/products/girls/shortscargo';
  static const String girlsjackets = '/products/girls/jackets';
  static const String girlssweaters = '/products/girls/sweaters';

  static const String services = '/services';
  static const String globalsources = '/services/globalsources';
  static const String development = '/services/development';
  static const String quality = '/services/quality';
  static const String clients = '/clients';
  static const String contact = '/contact';
  static const String accessoeies = '/accessories';
  static const String leatherproduct = '/leatherproduct';

  static List<GetPage<dynamic>> pages = [
    GetPage(name: home, page: () => HomePageRoot()),
    GetPage(name: aboutResources, page: () => DashAndTagResoucesRoot()),
    GetPage(name: missionVision, page: () => MissionVissionRoot()),
    // GetPage(name: mensjeans, page: () => MeansJeans()),
    // GetPage(name: menstshirts, page: () => MensTshirtRoot()),
    // GetPage(name: menspoloshirts, page: () => PoloShirts()),
    GetPage(name: contact, page: () => ContactUsRoot()),
    GetPage(name: clients, page: () => OurClientsRoot()),
    GetPage(name: services, page: () => ServicesPageRoot()),
    GetPage(name: profile, page: () => ProfilePage()),
    GetPage(name: accessoeies, page: () => ProductShowcasePage()),
    GetPage(name: leatherproduct, page: () => ProductShowcasePage()),

    GetPage(name: menstshirts, page: () => ProductShowcasePage()),
    GetPage(name: mensshirtspants, page: () => ProductShowcasePage()),
    GetPage(name: mensjeans, page: () => ProductShowcasePage()),
    GetPage(name: mensjackets, page: () => ProductShowcasePage()),
    GetPage(name: menspoloshirts, page: () => ProductShowcasePage()),
    GetPage(name: mensshortscargo, page: () => ProductShowcasePage()),
    GetPage(name: menssweaters, page: () => ProductShowcasePage()),

    GetPage(name: womenstshirts, page: () => ProductShowcasePage()),
    GetPage(name: womensshirtspants, page: () => ProductShowcasePage()),
    GetPage(name: womensjeans, page: () => ProductShowcasePage()),
    GetPage(name: womenssweaters, page: () => ProductShowcasePage()),
    GetPage(name: womenspoloshirts, page: () => ProductShowcasePage()),
    GetPage(name: womenshoodies, page: () => ProductShowcasePage()),
    GetPage(name: womensshortscargo, page: () => ProductShowcasePage()),



    GetPage(name: boystshirts, page: () => ProductShowcasePage()),
    GetPage(name: boyspoloshirts, page: () => ProductShowcasePage()),
    GetPage(name: boysshirtspants, page: () => ProductShowcasePage()),
    GetPage(name: boysjeans, page: () => ProductShowcasePage()),
    GetPage(name: boyshoodies, page: () => ProductShowcasePage()),
    GetPage(name: boyshortscargo, page: () => ProductShowcasePage()),
    GetPage(name: boyssweaters, page: () => ProductShowcasePage()),



    GetPage(name: girlstshirts, page: () => ProductShowcasePage()),
    GetPage(name: girlsshirtspants, page: () => ProductShowcasePage()),
    GetPage(name: girlsjeans, page: () => ProductShowcasePage()),
    GetPage(name: girlsjackets, page: () => ProductShowcasePage()),
    GetPage(name: girlspoloshirts, page: () => ProductShowcasePage()),
    GetPage(name: girlshoodies, page: () => ProductShowcasePage()),
    GetPage(name: girlshortscargo, page: () => ProductShowcasePage()),
    GetPage(name: girlssweaters, page: () => ProductShowcasePage()),
  ];
}
