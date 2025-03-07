
class Routes {
  static const home = '/';
  static const onboarding = '/onboarding';
  static const login = '/login_go';
  static const signup = '/sign_up';
  static const completeProfile = '/complete_profile';
  static const categoriesDetail = '/categoriesDetail';
  static const categories = '/categories';
  static const recipeDetail = '/recipe-detail/:recipeId';
  static String recipeBuilder(int id)=>"/recipe-detail/$id";
  static const  community = '/community';

}
