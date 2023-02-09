class UserModel {
  UserModel(this.suroo, this.joop);
  final String suroo;
  final bool joop;
}

final q1 = UserModel('Кыргызстан Орто Азия Мамлекетиби?', true);
final q2 = UserModel('Африка материги Жердин чыгышында жайгашканбы?', false);
final q3 = UserModel('Топ менен футбол ойнойбу?', true);
final q4 = UserModel('Темир итке керекпи?', false);
final q5 = UserModel('Чымчык сайрайбы?', true);
final q6 = UserModel('Ток менен ойносо болобу?', false);

List<UserModel> surooJoop = [q1, q2, q3, q4, q5, q6];
