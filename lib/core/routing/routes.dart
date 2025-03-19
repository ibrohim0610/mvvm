
class Routes {
  static const home = '/';
  static const review = '/reviews/:recipeId';
  static const onboarding = '/onboarding';
  static const login = '/login_go';
  static const signup = '/sign_up';
  static const completeProfile = '/complete_profile';
  static const categoriesDetail = '/categoriesDetail';
  static const categories = '/categories';
  static const  community = '/community';
  static const recipeDetail = '/recipe-detail/:recipeId';
  static const createReview = '/create-review/:recipeId';
  static const topChefs = '/top-chefs';
  static String recipeBuilder(int id)=>"/recipe-detail/$id";
  static String getReviews(int recipeId)=>'/reviews/$recipeId';
  static String getCreateReview(int recipeId)=> '/create-review/$recipeId';

}
