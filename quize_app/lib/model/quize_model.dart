class Quize {
  const Quize(this.suroo, this.joop);
  final String suroo;
  final bool joop;
}

const q1 = Quize('Кыргызстанда 7 область барбы?', true);
const q2 = Quize('Кыргызстандын борбору Таласпы?', false);
const q3 = Quize('Бал бузулабы', false);
const q4 = Quize('Чымчык темир жебейби?', true);
const q5 = Quize('Ит беш буттуубу?', false);
const q6 = Quize('Алтындын өңү сарыбы?', true);
const q7 = Quize('Кичинекей бала трактор айдайбы?', false);
const q8 = Quize('Жумгал Нарын облусундабы?', true);

const quizzes = <Quize>[q1, q2, q3, q4, q5, q6, q7, q8];
