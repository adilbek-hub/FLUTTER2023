import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class WorldCapitals {
  const WorldCapitals(
      {required this.name, required this.country, required this.continent});
  final String name;
  final String country;
  final String continent;
}

//a
const abudabi =
    WorldCapitals(name: "Абу-Даби", country: "ОАЭ", continent: "Азия");
const abudja =
    WorldCapitals(name: "Абуджа", country: "Нигерия", continent: "Африка");
const adisabebe =
    WorldCapitals(name: "Аддис-Абеба", country: "Эфиопия", continent: "Африка");
const akkra =
    WorldCapitals(name: "Аккра", country: "Гана", continent: "Африка");
const aljir =
    WorldCapitals(name: "Алжир", country: "Алжир", continent: "Африка");
const amman =
    WorldCapitals(name: "Амман", country: "Иордания", continent: "Азия");
const amsterdam = WorldCapitals(
    name: "Амстердам", country: "Нидерланды", continent: "Европа");
const andorra = WorldCapitals(
    name: "Андорра-ла-Велья", country: "Алжир", continent: "Африка");
const ankara =
    WorldCapitals(name: "Анкаpа", country: "Турция", continent: "Азия");
const antananarivu = WorldCapitals(
    name: "Антананариву", country: "Мадагаскар", continent: "Африка");
const apia =
    WorldCapitals(name: "Апиа", country: "Самоа", continent: "Австралия");
const asmera =
    WorldCapitals(name: "Асмэра", country: "Эритрея", continent: "Африка");
const astana =
    WorldCapitals(name: "Астана", country: "Казахстан", continent: "Азия");
const asunson = WorldCapitals(
    name: "Асунсьон", country: "Парагвай", continent: "Түштүк Америка");
const afiny =
    WorldCapitals(name: "Афины", country: "Греция", continent: "Европа");
const ashhabat =
    WorldCapitals(name: "Ашхабад", country: "Туркмения", continent: "Азия");
//b
const bagdad =
    WorldCapitals(name: "Багдад", country: "Ирак", continent: "Азия");
const baku =
    WorldCapitals(name: "Баку", country: "Азербайджан", continent: "Азия");
const bamako =
    WorldCapitals(name: "Бамако", country: "Мали", continent: "Африка");
const bangi = WorldCapitals(
    name: "Банги",
    country: "Борбордукафрика Республикасы",
    continent: "Африка");
const bangog =
    WorldCapitals(name: "Бангкок", country: "Таиланд", continent: "Азия");
const bandar = WorldCapitals(
    name: "Бандар-Сери-Бегаван", country: "Бруней", continent: "Азия");
const banjul =
    WorldCapitals(name: "Банжул", country: "Гамбия", continent: "Африка");
const baster = WorldCapitals(
    name: "Бастер",
    country: "Сент-Кристофер жана Невис",
    continent: "Түндүк Америка");
const beyrut =
    WorldCapitals(name: "Бейрут", country: "Ливан", continent: "Азия");
const belgrad =
    WorldCapitals(name: "Белград", country: "Сербия", continent: "Европа");
const beliz = WorldCapitals(
    name: "Бельмопан", country: "Белиз", continent: "Түндүк Америка");
const berlin =
    WorldCapitals(name: "Берлин", country: "Германия", continent: "Европа");
const bern =
    WorldCapitals(name: "Берн", country: "Швейцария", continent: "Европа");
const bisau =
    WorldCapitals(name: "Бисау", country: "Гвинея-Бисау", continent: "Африка");
const bishkek =
    WorldCapitals(name: "Бишкек", country: "Киргизия", continent: "Азия");
const bogota = WorldCapitals(
    name: "Богота", country: "Колумбия", continent: "Түштүк Америка");
const brazzavil =
    WorldCapitals(name: "Браззавиль", country: "Конго", continent: "Африка");
const brazilia = WorldCapitals(
    name: "Бразилиа", country: "Бразилия", continent: "Түштүк Америка");
const bratislava =
    WorldCapitals(name: "Братислава", country: "Словакия", continent: "Европа");
const barbados = WorldCapitals(
    name: "Бриджтаун", country: "Барбадос", continent: "Түштүк Америка");
const brussel =
    WorldCapitals(name: "Брюссель", country: "Бельгия", continent: "Европа");
const budapesht =
    WorldCapitals(name: "Будапешт", country: "Венгрия", continent: "Европа");
const bujumbura =
    WorldCapitals(name: "Бужумбура", country: "Бурунди", continent: "Африка");
const buharest =
    WorldCapitals(name: "Бухарест", country: "Румыния", continent: "Европа");
const buenos = WorldCapitals(
    name: "Буэнос-Айрес", country: "Аргентина", continent: "Түштүк Америка");
//v
const vaduts =
    WorldCapitals(name: "Вадуц", country: "Лихтенштейн", continent: "Европа");
const valetta =
    WorldCapitals(name: "Валетта", country: "Мальта", continent: "Европа");
const varshava =
    WorldCapitals(name: "Варшава", country: "Польша", continent: "Европа");
const vatican =
    WorldCapitals(name: "Ватикан", country: "Ватикан", continent: "Европа");
const vashinkton = WorldCapitals(
    name: "Вашингтон", country: "США", continent: "Түндүк Америка");
const vellinkton = WorldCapitals(
    name: "Веллингтон", country: "Новая Зеландия", continent: "Австралия");
const vena =
    WorldCapitals(name: "Вена", country: "Австрия", continent: "Европа");
const victoria = WorldCapitals(
    name: "Виктория", country: "Сейшельс аралдары", continent: "Африка");
const villa =
    WorldCapitals(name: "Вила", country: "Вануату", continent: "Австралия");
const vilnus =
    WorldCapitals(name: "Вильнюс", country: "Литва", continent: "Европа");
const vetyan =
    WorldCapitals(name: "Вьентьян", country: "Лаос", continent: "Азия");

//g
const gabarone =
    WorldCapitals(name: "Габороне", country: "Ботсвана", continent: "Африка");
const gavana =
    WorldCapitals(name: "Гавана", country: "Куба", continent: "Түндүк Америка");
const gvatemala = WorldCapitals(
    name: "Гватемала", country: "Гватемала", continent: "Түндүк Америка");
//d
const dakar =
    WorldCapitals(name: "Дакар", country: "Сенегал", continent: "Африка");
const dakka =
    WorldCapitals(name: "Дакка", country: "Бангладеш", continent: "Азия");
const damask =
    WorldCapitals(name: "Дамаск", country: "Сирия", continent: "Азия");
const deli = WorldCapitals(name: "Дели", country: "Индия", continent: "Азия");
const djakarta =
    WorldCapitals(name: "Джакарта", country: "Индонезия", continent: "Азия");
const djibuti =
    WorldCapitals(name: "Джибути", country: "Джибути", continent: "Африка");
const djorjtown = WorldCapitals(
    name: "Джорджтаун", country: "Гайана", continent: "Түштүк Америка");
const djuba =
    WorldCapitals(name: "Джуба", country: "Түштүк Судан", continent: "Африка");
const dili =
    WorldCapitals(name: "Дили", country: "Восточный Тимор", continent: "Азия");
const dodoma =
    WorldCapitals(name: "Додома", country: "Танзания", continent: "Африка");
const doha = WorldCapitals(name: "Доха", country: "Катар", continent: "Азия");
const dublin =
    WorldCapitals(name: "Дублин", country: "Ирландия", continent: "Европа");
const dushanbe =
    WorldCapitals(name: "Душанбе", country: "Таджикистан", continent: "Азия");
const erevan =
    WorldCapitals(name: "Ереван", country: "Армения", continent: "Азия");
const zagreb =
    WorldCapitals(name: "Загреб", country: "Хорватия", continent: "Европа");
//i
const ierusalim =
    WorldCapitals(name: "Иерусалим", country: "Израиль", continent: "Азия");
const islamabad =
    WorldCapitals(name: "Исламабад", country: "Пакистан", continent: "Азия");
//k
const kabul =
    WorldCapitals(name: "Кабул", country: "Афганистан", continent: "Азия");
const kair =
    WorldCapitals(name: "Каир", country: "Египет", continent: "Африка");
const kampala =
    WorldCapitals(name: "Кампала", country: "Уганда", continent: "Африка");
const kanberra = WorldCapitals(
    name: "Канберра", country: "Австралия", continent: "Австралия");
const karakas = WorldCapitals(
    name: "Каракас", country: "Венесуэла", continent: "Түштүк Америка");
const kastri = WorldCapitals(
    name: "Кастри", country: "Сент-Люсия", continent: "Түштүк Америка");
const katmandu = WorldCapitals(
    name: "Катманду", country: "Австралия", continent: "Австралия");
const kigali =
    WorldCapitals(name: "Кигали", country: "Руанда", continent: "Африка");
const kiev =
    WorldCapitals(name: "Киев", country: "Украина", continent: "Европа");
const kingstaun = WorldCapitals(
    name: "Кингстаун",
    country: "Сент-Винсент и Гренадины",
    continent: "Түндүк Америка");
const kingston = WorldCapitals(
    name: "Кингстон", country: "Ямайка", continent: "Түндүк Америка");
const kishasa = WorldCapitals(
    name: "Киншаса", country: "Конго (Дем. Република)", continent: "Африка");
const kishinev =
    WorldCapitals(name: "Кишинев", country: "Молдавия", continent: "Европа");
const kolombo =
    WorldCapitals(name: "Коломбо", country: "Шри-Ланка", continent: "Азия");
const konagri =
    WorldCapitals(name: "Конакри", country: "Гвинея", continent: "Африка");
const kopengagen =
    WorldCapitals(name: "Копенгаген", country: "Дания", continent: "Европа");
const koror =
    WorldCapitals(name: "Корор", country: "Палау", continent: "Австралия");
const kuala =
    WorldCapitals(name: "Куала-Лумпур", country: "Малайзия", continent: "Азия");
const konakri =
    WorldCapitals(name: "Конакри", country: "Гвинея", continent: "Африка");

//l
const lapas = WorldCapitals(
    name: "Ла-Пас", country: "Боливия", continent: "Түштүк Америка");
const libreval =
    WorldCapitals(name: "Либревиль", country: "Габон", continent: "Африка");
const lilongve =
    WorldCapitals(name: "Лилонгве", country: "Малави", continent: "Африка");
const lima =
    WorldCapitals(name: "Лима", country: "Перу", continent: "Түштүк Америка");
const lissabon =
    WorldCapitals(name: "Лиссабон", country: "Португалия", continent: "Европа");
const lome = WorldCapitals(name: "Ломе", country: "Того", continent: "Африка");
const london = WorldCapitals(
    name: "Лондон", country: "Великобритания", continent: "Европа");
const luanda =
    WorldCapitals(name: "Луанда", country: "Ангола", continent: "Африка");
const lusaka =
    WorldCapitals(name: "Лусака", country: "Замбия", continent: "Африка");
const jublana =
    WorldCapitals(name: "Любляна", country: "Словения", continent: "Европа");
const luksemburg = WorldCapitals(
    name: "Люксембург", country: "Люксембург", continent: "Европа");

//m
const madjuro = WorldCapitals(
    name: "Маджуро", country: "Маршалловы острова", continent: "Австралия");
const madrid =
    WorldCapitals(name: "Мадрид", country: "Испания", continent: "Европа");
const malabo = WorldCapitals(
    name: "Малабо", country: "Экваториал Гвинея", continent: "Африка");
const male =
    WorldCapitals(name: "Мале", country: "Мальдивы", continent: "Азия");
const managua = WorldCapitals(
    name: "Манагуа", country: "Никарагуа", continent: "Түндүк Америка");
const manama =
    WorldCapitals(name: "Манама", country: "Бахрейн", continent: "Азия");
const manila =
    WorldCapitals(name: "Манила", country: "Филиппины", continent: "Азия");
const maputu =
    WorldCapitals(name: "Мапуту", country: "Мозамбик", continent: "Африка");
const maseru =
    WorldCapitals(name: "Масеру", country: "Лесото", continent: "Африка");
const maskat =
    WorldCapitals(name: "Маскат", country: "Оман", continent: "Азия");
const mbabane =
    WorldCapitals(name: "Мбабане", country: "Эсватини", continent: "Африка");
const mehico = WorldCapitals(
    name: "Мехико", country: "Мексика", continent: "Түштүк Америка");
const minsk =
    WorldCapitals(name: "Минск", country: "Белоруссия", continent: "Европа");
const mogadisho =
    WorldCapitals(name: "Могадишо", country: "Сомали", continent: "Африка");
const monako =
    WorldCapitals(name: "Монако", country: "Монако", continent: "Европа");
const monrovia =
    WorldCapitals(name: "Монровия", country: "Либерия", continent: "Африка");
const montevodeo = WorldCapitals(
    name: "Монтевидео", country: "Уругвай", continent: "Түштүк Америка");
const moroni = WorldCapitals(
    name: "Морони", country: "Комор аралдары", continent: "Африка");
const moskwa =
    WorldCapitals(name: "Москва", country: "Орусия", continent: "Европа");
//n
const nayrobi =
    WorldCapitals(name: "Найроби", country: "Кения", continent: "Африка");
const nassau = WorldCapitals(
    name: "Нассау", country: "Багам аралдары", continent: "Түштүк Америка");
const ndjamena =
    WorldCapitals(name: "Нджамена", country: "Чад", continent: "Африка");
const neipido =
    WorldCapitals(name: "Нейпьидо", country: "Мьянма", continent: "Азия");
const niamey =
    WorldCapitals(name: "Ниамей", country: "Нигер", continent: "Африка");
const nicosia =
    WorldCapitals(name: "Никосия", country: "Кипр", continent: "Азия");
const nuakshot =
    WorldCapitals(name: "Нуакшот", country: "Мавритания", continent: "Африка");
const nukualofa =
    WorldCapitals(name: "Нукуалофа", country: "Тонга", continent: "Австралия");
//o
const oslo =
    WorldCapitals(name: "Осло", country: "Норвегия", continent: "Европа");
const ottava = WorldCapitals(
    name: "Оттава", country: "Канада", continent: "Түндүк Америка");
//p
const surinam = WorldCapitals(
    name: "Паpамаpибо", country: "Суринам", continent: "Түштүк Америка");
const palikir = WorldCapitals(
    name: "Паликир", country: "Микронезия", continent: "Австралия");
const panama = WorldCapitals(
    name: "Панама", country: "Панама", continent: "Түндүк Америка");
const parij =
    WorldCapitals(name: "Париж", country: "Франция", continent: "Европа");
const pekin = WorldCapitals(name: "Пекин", country: "Китай", continent: "Азия");
const pnompen =
    WorldCapitals(name: "Пномпень", country: "Камбоджа", continent: "Азия");
const podgorisa = WorldCapitals(
    name: "Подгорица", country: "Черногория", continent: "Европа");
const portlui =
    WorldCapitals(name: "Порт-Луи", country: "Маврикий", continent: "Африка");
const portmorsbi = WorldCapitals(
    name: "Порт-Морсби",
    country: "Папуа - Жаңы Гвинея",
    continent: "Австралия");
const portoprent = WorldCapitals(
    name: "Порт-о-Пренс", country: "Гаити", continent: "Түндүк Америка");
const portofspeys = WorldCapitals(
    name: "Порт-оф-Спейн",
    country: "Тринидад и Тобаго",
    continent: "Түндүк Америка");
const portnovo =
    WorldCapitals(name: "Порто-Ново", country: "Бенин", continent: "Африка");
const praga =
    WorldCapitals(name: "Прага", country: "Чехия", continent: "Европа");
const praia =
    WorldCapitals(name: "Прая", country: "Кабо-Верде", continent: "Африка");
const pretoria =
    WorldCapitals(name: "Претория", country: "ЮАР", continent: "Африка");
const phenian =
    WorldCapitals(name: "Пхеньян", country: "Түндүк Корея", continent: "Азия");
//r
const rabat =
    WorldCapitals(name: "Рабат", country: "Марокко", continent: "Африка");
const ramala =
    WorldCapitals(name: "Рамалла", country: "Палестина", continent: "Азия");
const reykaivik =
    WorldCapitals(name: "Рейкьявик", country: "Исландия", continent: "Европа");
const riga =
    WorldCapitals(name: "Рига", country: "Латвия", continent: "Европа");
const roma = WorldCapitals(name: "Рим", country: "Италия", continent: "Европа");
const pozo = WorldCapitals(
    name: "Розо", country: "Доминика", continent: "Түндүк Америка");
//s
const sanmarino = WorldCapitals(
    name: "Сан-Марино", country: "Сан-Марино", continent: "Европа");
const sanslavador = WorldCapitals(
    name: "Сан-Сальвадор", country: "Сальвадор", continent: "Түндүк Америка");
const santome = WorldCapitals(
    name: "Сан-Томе", country: "Сан-Томе и Принсипи", continent: "Африка");
const sanhose = WorldCapitals(
    name: "Сан-Хосе", country: "Коста-Рика", continent: "Түндүк Америка");
const sana = WorldCapitals(name: "Сана", country: "Йемен", continent: "Азия");
const santo = WorldCapitals(
    name: "Санто-Доминго",
    country: "Доминикан Республикасы",
    continent: "Түндүк Америка");
const santiago = WorldCapitals(
    name: "Сантьяго", country: "Чили", continent: "Түштүк Америка");
const saraevo = WorldCapitals(
    name: "Сараево", country: "Босния жана Герцеговина", continent: "Европа");
const sent = WorldCapitals(
    name: "Сент-Джонс",
    country: "Антигуа жана Барбуда",
    continent: "Түндүк Америка");
const sentdj = WorldCapitals(
    name: "Сент-Джорджес", country: "Гренада", continent: "Түндүк Америка");
const seul =
    WorldCapitals(name: "Сеул", country: "Түштүк корея", continent: "Азия");
const singapur =
    WorldCapitals(name: "Сингапур", country: "Сингапур", continent: "Азия");
const skope = WorldCapitals(
    name: "Скопье", country: "Түндүк Македония", continent: "Европа");
const sofia =
    WorldCapitals(name: "София", country: "Болгария", continent: "Европа");
const stokgolm =
    WorldCapitals(name: "Стокгольм", country: "Швеция", continent: "Европа");
const suva =
    WorldCapitals(name: "Сува", country: "Фиджи", continent: "Австралия");
//t
const taybey =
    WorldCapitals(name: "Тайпей", country: "Тайвань", continent: "Азия");
const tallin =
    WorldCapitals(name: "Таллинн", country: "Эстония", continent: "Европа");
const tarava =
    WorldCapitals(name: "Тарава", country: "Кирибати", continent: "Австралия");
const tashkent =
    WorldCapitals(name: "Ташкент", country: "Узбекистан", continent: "Азия");
const tbilisi =
    WorldCapitals(name: "Тбилиси", country: "Грузия", continent: "Азия");
const tegeran =
    WorldCapitals(name: "Тегеран", country: "Иран", continent: "Азия");
const tegusigalpe = WorldCapitals(
    name: "Тегусигальпа", country: "Гондурас", continent: "Түндүк Америка");
const tirana =
    WorldCapitals(name: "Тирана", country: "Албания", continent: "Европа");
const tokio =
    WorldCapitals(name: "Токио", country: "Япония", continent: "Азия");
const tripoli =
    WorldCapitals(name: "Триполи", country: "Триполи", continent: "Африка");
const tunis =
    WorldCapitals(name: "Тунис", country: "Тунис", continent: "Африка");
const thimphu =
    WorldCapitals(name: "Тхимпху", country: "Бутан", continent: "Азия");

//u
const uagadugu = WorldCapitals(
    name: "Уагадугу", country: "Буркина-Фасо", continent: "Африка");
const ulabbator =
    WorldCapitals(name: "Улан-Батор", country: "Монголия", continent: "Азия");

//f
const funafuti =
    WorldCapitals(name: "Фунафути", country: "Тувалу", continent: "Австралия");
const hartum =
    WorldCapitals(name: "Хаpтум", country: "Судан", continent: "Африка");
const hanoy =
    WorldCapitals(name: "Ханой", country: "Вьетнам", continent: "Азия");
const harare =
    WorldCapitals(name: "Хараре", country: "Зимбабве", continent: "Африка");
const helsinki =
    WorldCapitals(name: "Хельсинки", country: "Финляндия", continent: "Европа");
const honiaka = WorldCapitals(
    name: "Хониаpа", country: "Соломон аралдары", continent: "Австралия");
const elkuveyt =
    WorldCapitals(name: "Эль-Кувейт", country: "Кувейт", continent: "Азия");
const erriad =
    WorldCapitals(name: "Эр-Рияд", country: "Сауд Аравиясы", continent: "Азия");
const yamusukro = WorldCapitals(
    name: "Ямусукро", country: "Кот-д'Ивуар", continent: "Африка");
const yaren =
    WorldCapitals(name: "Ярен", country: "Науру", continent: "Австралия");
const yaunde =
    WorldCapitals(name: "Яунде", country: "Камерун", continent: "Африка");
//////////////////////////////////////////////////////////////////////////////////////////////////////////
Set<WorldCapitals> a = {
  abudabi,
  abudja,
  adisabebe,
  afiny,
  akkra,
  aljir,
  amman,
  amsterdam,
  andorra,
  ankara,
  antananarivu,
  apia,
  ashhabat,
  asmera,
  astana
};

Set<WorldCapitals> b = {
  bagdad,
  baku,
  bamako,
  bandar,
  bangi,
  bangog,
  banjul,
  barbados,
  baster,
  belgrad,
  beliz,
  berlin,
  bern
};
Set<WorldCapitals> v = {
  vaduts,
  valetta,
  varshava,
  vashinkton,
  vatican,
  vellinkton,
  vena,
  vetyan,
  victoria,
  villa,
  vilnus
};
Set<WorldCapitals> g = {
  gabarone,
  gavana,
  gvatemala,
};
Set<WorldCapitals> d = {
  dakar,
  dakka,
  damask,
  deli,
  dili,
  djakarta,
  djibuti,
  djorjtown,
  djuba,
  dodoma,
  doha,
  dublin,
  dushanbe
};
Set<WorldCapitals> i = {
  ierusalim,
  islamabad,
};
Set<WorldCapitals> k = {
  kabul,
  kair,
  kampala,
  kanberra,
  karakas,
  kastri,
  katmandu,
  kiev,
  kigali,
  kingstaun,
  kingston,
  kishasa,
  kishinev,
  kolombo,
  konagri,
  kopengagen,
  koror,
  kuala
};
Set<WorldCapitals> l = {
  lapas,
  libreval,
  lilongve,
  lima,
  lissabon,
  lome,
  london,
  luanda,
  luksemburg,
  lusaka
};
Set<WorldCapitals> m = {
  madjuro,
  madrid,
  malabo,
  male,
  managua,
  manama,
  manila,
  maputu,
  maseru,
  maskat,
  mbabane,
  mehico,
  minsk,
  mogadisho,
  monako,
  monrovia,
  montevodeo,
  moroni,
  moskwa
};
Set<WorldCapitals> n = {
  nassau,
  nayrobi,
  ndjamena,
  neipido,
  niamey,
  nicosia,
  nuakshot,
  nukualofa
};
Set<WorldCapitals> o = {
  oslo,
  ottava,
};
Set<WorldCapitals> p = {
  palikir,
  panama,
  parij,
  pekin,
  phenian,
  pnompen,
  podgorisa,
  portlui,
  portmorsbi,
  portnovo,
  portofspeys,
  portoprent,
  pozo,
  praga,
  praia,
  pretoria
};
Set<WorldCapitals> r = {
  rabat,
  ramala,
  reykaivik,
  riga,
  roma,
};
Set<WorldCapitals> s = {
  sana,
  sanhose,
  sanmarino,
  santiago,
  santo,
  santome,
  saraevo,
  sent,
  sentdj,
  seul,
  singapur,
  skope,
  sofia,
  stokgolm,
  surinam,
  suva
};
Set<WorldCapitals> t = {
  tallin,
  tarava,
  tashkent,
  taybey,
  tbilisi,
  tegeran,
  tegusigalpe,
  thimphu,
  tirana,
  tokio,
  tripoli,
  tunis
};
Set<WorldCapitals> u = {
  uagadugu,
  ulabbator,
};
Set<WorldCapitals> fhy = {
  funafuti,
  hanoy,
  harare,
  hartum,
  helsinki,
  honiaka,
  yamusukro,
  yaren,
  yaunde
};
Set<WorldCapitals> e = {
  elkuveyt,
  erevan,
  erriad,
};

List<Set> capitals = [a, b, v, g, d, i, k, l, m, n, o, p, r, s, t, u, fhy];

// List<WorldCapitals> a = [
//   WorldCapitals(name: "Абу-Даби", country: "ОАЭ", continent: "Азия"),
//   WorldCapitals(name: "Абуджа", country: "Нигерия", continent: "Африка"),
//   WorldCapitals(name: "Аддис-Абеба", country: "Эфиопия", continent: "Африка"),
//   WorldCapitals(name: "Аккра", country: "Гана", continent: "Африка"),
//   WorldCapitals(name: "Алжир", country: "Алжир", continent: "Африка"),
//   WorldCapitals(name: "Амман", country: "Иордания", continent: "Азия"),
//   WorldCapitals(name: "Амстердам", country: "Нидерланды", continent: "Европа"),
//   WorldCapitals(
//       name: "Андорра-ла-Велья", country: "Алжир", continent: "Африка"),
//   WorldCapitals(name: "Анкаpа", country: "Турция", continent: "Азия"),
//   WorldCapitals(
//       name: "Антананариву", country: "Мадагаскар", continent: "Африка"),
//   WorldCapitals(name: "Апиа", country: "Самоа", continent: "Австралия"),
//   WorldCapitals(name: "Асмэра", country: "Эритрея", continent: "Африка"),
//   WorldCapitals(name: "Астана", country: "Казахстан", continent: "Азия"),
//   WorldCapitals(
//       name: "Асунсьон", country: "Парагвай", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Афины", country: "Греция", continent: "Европа"),
//   WorldCapitals(name: "Ашхабад", country: "Туркмения", continent: "Азия"),
// ];

// List<WorldCapitals> b = [
//   WorldCapitals(name: "Багдад", country: "Ирак", continent: "Азия"),
//   WorldCapitals(name: "Баку", country: "Азербайджан", continent: "Азия"),
//   WorldCapitals(name: "Бамако", country: "Мали", continent: "Африка"),
//   WorldCapitals(
//       name: "Банги",
//       country: "Борбордукафрика Республикасы",
//       continent: "Африка"),
//   WorldCapitals(name: "Бангкок", country: "Таиланд", continent: "Азия"),
//   WorldCapitals(
//       name: "Бандар-Сери-Бегаван", country: "Бруней", continent: "Азия"),
//   WorldCapitals(name: "Банжул", country: "Гамбия", continent: "Африка"),
//   WorldCapitals(
//       name: "Бастер",
//       country: "Сент-Кристофер жана Невис",
//       continent: "Түндүк Америка"),
//   WorldCapitals(name: "Бейрут", country: "Ливан", continent: "Азия"),
//   WorldCapitals(name: "Белград", country: "Сербия", continent: "Европа"),
//   WorldCapitals(
//       name: "Бельмопан", country: "Белиз", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Берлин", country: "Германия", continent: "Европа"),
//   WorldCapitals(name: "Берн", country: "Швейцария", continent: "Европа"),
//   WorldCapitals(name: "Бисау", country: "Гвинея-Бисау", continent: "Африка"),
//   WorldCapitals(name: "Бишкек", country: "Киргизия", continent: "Азия"),
//   WorldCapitals(
//       name: "Богота", country: "Колумбия", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Браззавиль", country: "Конго", continent: "Африка"),
//   WorldCapitals(
//       name: "Бразилиа", country: "Бразилия", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Братислава", country: "Словакия", continent: "Европа"),
//   WorldCapitals(
//       name: "Бриджтаун", country: "Барбадос", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Брюссель", country: "Бельгия", continent: "Европа"),
//   WorldCapitals(name: "Будапешт", country: "Венгрия", continent: "Европа"),
//   WorldCapitals(name: "Бужумбура", country: "Бурунди", continent: "Африка"),
//   WorldCapitals(name: "Бухарест", country: "Румыния", continent: "Европа"),
//   WorldCapitals(
//       name: "Буэнос-Айрес", country: "Аргентина", continent: "Түштүк Америка"),
// ];

// List<WorldCapitals> v = [
//   WorldCapitals(name: "Вадуц", country: "Лихтенштейн", continent: "Европа"),
//   WorldCapitals(name: "Валетта", country: "Мальта", continent: "Европа"),
//   WorldCapitals(name: "Варшава", country: "Польша", continent: "Европа"),
//   WorldCapitals(name: "Ватикан", country: "Ватикан", continent: "Европа"),
//   WorldCapitals(name: "Вашингтон", country: "США", continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Веллингтон", country: "Новая Зеландия", continent: "Австралия"),
//   WorldCapitals(name: "Вена", country: "Австрия", continent: "Европа"),
//   WorldCapitals(
//       name: "Виктория", country: "Сейшельс аралдары", continent: "Африка"),
//   WorldCapitals(name: "Вила", country: "Вануату", continent: "Австралия"),
//   WorldCapitals(name: "Вильнюс", country: "Литва", continent: "Европа"),
//   WorldCapitals(name: "Вьентьян", country: "Лаос", continent: "Азия"),
// ];

// List<WorldCapitals> vg = [
//   WorldCapitals(name: "Вадуц", country: "Лихтенштейн", continent: "Европа"),
//   WorldCapitals(name: "Валетта", country: "Мальта", continent: "Европа"),
//   WorldCapitals(name: "Варшава", country: "Польша", continent: "Европа"),
//   WorldCapitals(name: "Ватикан", country: "Ватикан", continent: "Европа"),
//   WorldCapitals(name: "Вашингтон", country: "США", continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Веллингтон", country: "Новая Зеландия", continent: "Австралия"),
//   WorldCapitals(name: "Вена", country: "Австрия", continent: "Европа"),
//   WorldCapitals(
//       name: "Виктория", country: "Сейшельс аралдары", continent: "Африка"),
//   WorldCapitals(name: "Вила", country: "Вануату", continent: "Австралия"),
//   WorldCapitals(name: "Вильнюс", country: "Литва", continent: "Европа"),
//   WorldCapitals(name: "Вьентьян", country: "Лаос", continent: "Азия"),
//   WorldCapitals(name: "Габороне", country: "Ботсвана", continent: "Африка"),
//   WorldCapitals(name: "Гавана", country: "Куба", continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Гватемала", country: "Гватемала", continent: "Түндүк Америка"),
// ];

// List<WorldCapitals> dez = [
//   WorldCapitals(name: "Дакар", country: "Сенегал", continent: "Африка"),
//   WorldCapitals(name: "Дакка", country: "Бангладеш", continent: "Азия"),
//   WorldCapitals(name: "Дамаск", country: "Сирия", continent: "Азия"),
//   WorldCapitals(name: "Дели", country: "Индия", continent: "Азия"),
//   WorldCapitals(name: "Джакарта", country: "Индонезия", continent: "Азия"),
//   WorldCapitals(name: "Джибути", country: "Джибути", continent: "Африка"),
//   WorldCapitals(
//       name: "Джорджтаун", country: "Гайана", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Джуба", country: "Түштүк Судан", continent: "Африка"),
//   WorldCapitals(name: "Дили", country: "Восточный Тимор", continent: "Азия"),
//   WorldCapitals(name: "Додома", country: "Танзания", continent: "Африка"),
//   WorldCapitals(name: "Доха", country: "Катар", continent: "Азия"),
//   WorldCapitals(name: "Дублин", country: "Ирландия", continent: "Европа"),
//   WorldCapitals(name: "Душанбе", country: "Таджикистан", continent: "Азия"),
//   WorldCapitals(name: "Ереван", country: "Армения", continent: "Азия"),
//   WorldCapitals(name: "Загреб", country: "Хорватия", continent: "Европа"),
// ];

// List<WorldCapitals> i = [
//   WorldCapitals(name: "Иерусалим", country: "Израиль", continent: "Азия"),
//   WorldCapitals(name: "Исламабад", country: "Пакистан", continent: "Азия"),
// ];

// List<WorldCapitals> k = [
//   WorldCapitals(name: "Кабул", country: "Афганистан", continent: "Азия"),
//   WorldCapitals(name: "Каир", country: "Египет", continent: "Африка"),
//   WorldCapitals(name: "Кампала", country: "Уганда", continent: "Африка"),
//   WorldCapitals(name: "Канберра", country: "Австралия", continent: "Австралия"),
//   WorldCapitals(
//       name: "Каракас", country: "Венесуэла", continent: "Түштүк Америка"),
//   WorldCapitals(
//       name: "Кастри", country: "Сент-Люсия", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Катманду", country: "Австралия", continent: "Австралия"),
//   WorldCapitals(name: "Кигали", country: "Руанда", continent: "Африка"),
//   WorldCapitals(name: "Киев", country: "Украина", continent: "Европа"),
//   WorldCapitals(
//       name: "Кингстаун",
//       country: "Сент-Винсент и Гренадины",
//       continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Кингстон", country: "Ямайка", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Катманду", country: "Австралия", continent: "Австралия"),
//   WorldCapitals(
//       name: "Киншаса", country: "Конго (Дем. Република)", continent: "Африка"),
//   WorldCapitals(name: "Кишинев", country: "Молдавия", continent: "Европа"),
//   WorldCapitals(name: "Каир", country: "Египет", continent: "Африка"),
//   WorldCapitals(name: "Коломбо", country: "Шри-Ланка", continent: "Азия"),
//   WorldCapitals(name: "Конакри", country: "Гвинея", continent: "Африка"),
//   WorldCapitals(name: "Копенгаген", country: "Дания", continent: "Европа"),
//   WorldCapitals(name: "Корор", country: "Палау", continent: "Австралия"),
//   WorldCapitals(name: "Куала-Лумпур", country: "Малайзия", continent: "Азия"),
//   WorldCapitals(name: "Конакри", country: "Гвинея", continent: "Африка"),
//   WorldCapitals(name: "Копенгаген", country: "Дания", continent: "Европа"),
// ];

// List<WorldCapitals> l = [
//   WorldCapitals(
//       name: "Ла-Пас", country: "Боливия", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Либревиль", country: "Габон", continent: "Африка"),
//   WorldCapitals(name: "Лилонгве", country: "Малави", continent: "Африка"),
//   WorldCapitals(name: "Лима", country: "Перу", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Лиссабон", country: "Португалия", continent: "Европа"),
//   WorldCapitals(name: "Ломе", country: "Того", continent: "Африка"),
//   WorldCapitals(name: "Лондон", country: "Великобритания", continent: "Европа"),
//   WorldCapitals(name: "Луанда", country: "Ангола", continent: "Африка"),
//   WorldCapitals(name: "Лусака", country: "Замбия", continent: "Африка"),
//   WorldCapitals(name: "Любляна", country: "Словения", continent: "Европа"),
//   WorldCapitals(name: "Люксембург", country: "Люксембург", continent: "Европа"),
// ];

// List<WorldCapitals> ml = [
//   WorldCapitals(
//       name: "Маджуро", country: "Маршалловы острова", continent: "Австралия"),
//   WorldCapitals(name: "Мадрид", country: "Испания", continent: "Европа"),
//   WorldCapitals(
//       name: "Малабо", country: "Экваториал Гвинея", continent: "Африка"),
//   WorldCapitals(name: "Мале", country: "Мальдивы", continent: "Азия"),
//   WorldCapitals(
//       name: "Манагуа", country: "Никарагуа", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Манама", country: "Бахрейн", continent: "Азия"),
//   WorldCapitals(name: "Манила", country: "Филиппины", continent: "Азия"),
//   WorldCapitals(name: "Мапуту", country: "Мозамбик", continent: "Африка"),
//   WorldCapitals(name: "Масеру", country: "Лесото", continent: "Африка"),
//   WorldCapitals(name: "Маскат", country: "Оман", continent: "Азия"),
//   WorldCapitals(name: "Мбабане", country: "Эсватини", continent: "Африка"),
//   WorldCapitals(
//       name: "Мехико", country: "Мексика", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Минск", country: "Белоруссия", continent: "Европа"),
//   WorldCapitals(name: "Могадишо", country: "Сомали", continent: "Африка"),
//   WorldCapitals(name: "Монако", country: "Монако", continent: "Европа"),
//   WorldCapitals(name: "Монровия", country: "Либерия", continent: "Африка"),
//   WorldCapitals(
//       name: "Монтевидео", country: "Уругвай", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Морони", country: "Комор аралдары", continent: "Африка"),
//   WorldCapitals(name: "Москва", country: "Орусия", continent: "Европа"),
//   WorldCapitals(name: "Луанда", country: "Ангола", continent: "Африка"),
// ];

// List<WorldCapitals> n = [
//   WorldCapitals(name: "Найроби", country: "Кения", continent: "Африка"),
//   WorldCapitals(
//       name: "Нассау", country: "Багам аралдары", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Нджамена", country: "Чад", continent: "Африка"),
//   WorldCapitals(name: "Нейпьидо", country: "Мьянма", continent: "Азия"),
//   WorldCapitals(name: "Ниамей", country: "Нигер", continent: "Африка"),
//   WorldCapitals(name: "Никосия", country: "Кипр", continent: "Азия"),
//   WorldCapitals(name: "Нуакшот", country: "Мавритания", continent: "Африка"),
//   WorldCapitals(name: "Нукуалофа", country: "Тонга", continent: "Австралия"),
// ];

// List<WorldCapitals> o = [
//   WorldCapitals(name: "Осло", country: "Норвегия", continent: "Европа"),
//   WorldCapitals(name: "Оттава", country: "Канада", continent: "Түндүк Америка"),
// ];

// List<WorldCapitals> p = [
//   WorldCapitals(
//       name: "Паpамаpибо", country: "Суринам", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Паликир", country: "Микронезия", continent: "Австралия"),
//   WorldCapitals(name: "Панама", country: "Панама", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Париж", country: "Франция", continent: "Европа"),
//   WorldCapitals(name: "Пекин", country: "Китай", continent: "Азия"),
//   WorldCapitals(name: "Пномпень", country: "Камбоджа", continent: "Азия"),
//   WorldCapitals(name: "Подгорица", country: "Черногория", continent: "Европа"),
//   WorldCapitals(name: "Порт-Луи", country: "Маврикий", continent: "Африка"),
//   WorldCapitals(
//       name: "Порт-Морсби",
//       country: "Папуа - Жаңы Гвинея",
//       continent: "Австралия"),
//   WorldCapitals(
//       name: "Порт-о-Пренс", country: "Гаити", continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Порт-оф-Спейн",
//       country: "Тринидад и Тобаго",
//       continent: "Түндүк Америка"),
//   WorldCapitals(name: "Порто-Ново", country: "Бенин", continent: "Африка"),
//   WorldCapitals(name: "Прага", country: "Чехия", continent: "Европа"),
//   WorldCapitals(name: "Прая", country: "Кабо-Верде", continent: "Африка"),
//   WorldCapitals(name: "Претория", country: "ЮАР", continent: "Африка"),
//   WorldCapitals(name: "Пхеньян", country: "Түндүк Корея", continent: "Азия"),
// ];

// List<WorldCapitals> r = [
//   WorldCapitals(name: "Рабат", country: "Марокко", continent: "Африка"),
//   WorldCapitals(name: "Рамалла", country: "Палестина", continent: "Азия"),
//   WorldCapitals(name: "Рейкьявик", country: "Исландия", continent: "Европа"),
//   WorldCapitals(name: "Рига", country: "Латвия", continent: "Европа"),
//   WorldCapitals(name: "Рим", country: "Италия", continent: "Европа"),
//   WorldCapitals(name: "Розо", country: "Доминика", continent: "Түндүк Америка"),
// ];

// List<WorldCapitals> s = [
//   WorldCapitals(name: "Сан-Марино", country: "Сан-Марино", continent: "Европа"),
//   WorldCapitals(
//       name: "Сан-Сальвадор", country: "Сальвадор", continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Сан-Томе", country: "Сан-Томе и Принсипи", continent: "Африка"),
//   WorldCapitals(
//       name: "Сан-Хосе", country: "Коста-Рика", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Сана", country: "Йемен", continent: "Азия"),
//   WorldCapitals(
//       name: "Санто-Доминго",
//       country: "Доминикан Республикасы",
//       continent: "Түндүк Америка"),
//   WorldCapitals(name: "Сантьяго", country: "Чили", continent: "Түштүк Америка"),
//   WorldCapitals(
//       name: "Сараево", country: "Босния жана Герцеговина", continent: "Европа"),
//   WorldCapitals(
//       name: "Сент-Джонс",
//       country: "Антигуа жана Барбуда",
//       continent: "Түндүк Америка"),
//   WorldCapitals(
//       name: "Сент-Джорджес", country: "Гренада", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Сантьяго", country: "Чили", continent: "Түштүк Америка"),
//   WorldCapitals(name: "Сеул", country: "Түштүк корея", continent: "Азия"),
//   WorldCapitals(name: "Сингапур", country: "Сингапур", continent: "Азия"),
//   WorldCapitals(
//       name: "Скопье", country: "Түндүк Македония", continent: "Европа"),
//   WorldCapitals(name: "София", country: "Болгария", continent: "Европа"),
//   WorldCapitals(name: "Стокгольм", country: "Швеция", continent: "Европа"),
//   WorldCapitals(name: "Сува", country: "Фиджи", continent: "Австралия"),
// ];

// List<WorldCapitals> t = [
//   WorldCapitals(name: "Тайпей", country: "Тайвань", continent: "Азия"),
//   WorldCapitals(name: "Таллинн", country: "Эстония", continent: "Европа"),
//   WorldCapitals(name: "Тарава", country: "Кирибати", continent: "Австралия"),
//   WorldCapitals(name: "Ташкент", country: "Узбекистан", continent: "Азия"),
//   WorldCapitals(name: "Тбилиси", country: "Грузия", continent: "Азия"),
//   WorldCapitals(name: "Тегеран", country: "Иран", continent: "Азия"),
//   WorldCapitals(
//       name: "Тегусигальпа", country: "Гондурас", continent: "Түндүк Америка"),
//   WorldCapitals(name: "Тирана", country: "Албания", continent: "Европа"),
//   WorldCapitals(name: "Токио", country: "Япония", continent: "Азия"),
//   WorldCapitals(name: "Триполи", country: "Триполи", continent: "Африка"),
//   WorldCapitals(name: "Тунис", country: "Тунис", continent: "Африка"),
//   WorldCapitals(name: "Тхимпху", country: "Бутан", continent: "Азия"),
// ];

// List<WorldCapitals> u = [
//   WorldCapitals(name: "Уагадугу", country: "Буркина-Фасо", continent: "Африка"),
//   WorldCapitals(name: "Улан-Батор", country: "Монголия", continent: "Азия"),
// ];
// List<WorldCapitals> fhey = [
//   WorldCapitals(name: "Фунафути", country: "Тувалу", continent: "Австралия"),
//   WorldCapitals(name: "Хаpтум", country: "Судан", continent: "Африка"),
//   WorldCapitals(name: "Ханой", country: "Вьетнам", continent: "Азия"),
//   WorldCapitals(name: "Хараре", country: "Зимбабве", continent: "Африка"),
//   WorldCapitals(name: "Хельсинки", country: "Финляндия", continent: "Европа"),
//   WorldCapitals(
//       name: "Хониаpа", country: "Соломон аралдары", continent: "Австралия"),
//   WorldCapitals(name: "Эль-Кувейт", country: "Кувейт", continent: "Азия"),
//   WorldCapitals(name: "Эр-Рияд", country: "Сауд Аравиясы", continent: "Азия"),
//   WorldCapitals(name: "Ямусукро", country: "Кот-д'Ивуар", continent: "Африка"),
//   WorldCapitals(name: "Ярен", country: "Науру", continent: "Австралия"),
//   WorldCapitals(name: "Яунде", country: "Камерун", continent: "Африка"),
// ];

// List worldCapitals = [a,b,v,vg,dez,i,k,l,ml,n,o,p,r,s,t,u,fhey];
