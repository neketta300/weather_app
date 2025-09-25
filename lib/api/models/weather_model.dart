import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class WeatherModel {
  final Location location; // Информация о местоположении
  final Current current; // Текущие погодные условия
  final Forecast forecast; // Прогноз на несколько дней

  WeatherModel({
    required this.location,
    required this.current,
    required this.forecast,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Location {
  final String name; // Название города
  final String region; // Регион или область
  final String country; // Страна
  final double lat; // Широта
  final double lon; // Долгота
  final String tzId; // Идентификатор часового пояса
  final String localtime; // Локальное время в виде строки

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.tzId,
    required this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Current {
  final double tempC; // Температура в градусах Цельсия
  final int isDay; // Флаг: день (1) или ночь (0)
  final Condition condition; // Текстовое описание и иконка погоды
  final double windKph; // Скорость ветра в км/ч
  final int windDegree; // Направление ветра в градусах
  final String windDir; // Направление ветра (например, "NW")
  final int pressureMb; // Давление в миллибарах
  final int precipMm; // Осадки в мм
  final int humidity; // Влажность в %
  final int cloud; // Облачность в %
  final double feelslikeC; // Ощущаемая температура в Цельсиях
  final double windchillC; // Температура с учётом ветра
  final double heatindexC; // Индекс жары
  final double dewpointC; // Точка росы
  final int visKm; // Видимость в км
  final double uv; // Уровень ультрафиолета

  Current({
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.precipMm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.windchillC,
    required this.heatindexC,
    required this.dewpointC,
    required this.visKm,
    required this.uv,
  });
  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Condition {
  final String text; // Описание погодных условий (например, "Ясно")
  final String icon; // URL или путь к иконке погоды

  Condition({required this.text, required this.icon});

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Forecast {
  final List<ForecastDay> forecastDay;

  Forecast({required this.forecastDay});

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class ForecastDay {
  final String date; // Дата прогноза
  final Day day; // Дневной прогноз
  final Astro astro; // Астрономические данные
  final List<Hour> hour; // Почасовой прогноз

  ForecastDay({
    required this.date,
    required this.day,
    required this.astro,
    required this.hour,
  });

  factory ForecastDay.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastDayToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Day {
  final double maxtempC; // Максимальная температура
  final double mintempC; // Минимальная температура
  final int avgtempC; // Средняя температура
  final int maxwindKph; // Максимальная скорость ветра
  final int totalprecipMm; // Общее количество осадков
  final int totalsnowCm; // Общее количество снега
  final int avgvisKm; // Средняя видимость
  final int avghumidity; // Средняя влажность
  final int dailyChanceOfRain; // Вероятность дождя
  final int dailyChanceOfSnow; // Вероятность снега
  final Condition condition; // Состояние погоды
  final double uv; // Уровень ультрафиолета

  Day({
    required this.maxtempC,
    required this.mintempC,
    required this.avgtempC,
    required this.maxwindKph,
    required this.totalprecipMm,
    required this.totalsnowCm,
    required this.avgvisKm,
    required this.avghumidity,
    required this.dailyChanceOfRain,
    required this.dailyChanceOfSnow,
    required this.condition,
    required this.uv,
  });

  factory Day.fromJson(Map<String, dynamic> json) =>
      _$DayFromJson(json);

  Map<String, dynamic> toJson() => _$DayToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Astro {
  final String sunrise; // Время восхода солнца
  final String sunset; // Время заката солнца
  final String moonrise; // Время восхода луны
  final String moonset; // Время заката луны
  final String moonPhase; // Фаза луны

  Astro({
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
  });
  factory Astro.fromJson(Map<String, dynamic> json) =>
      _$AstroFromJson(json);

  Map<String, dynamic> toJson() => _$AstroToJson(this);
}

@JsonSerializable(
  fieldRename: FieldRename.snake,
  explicitToJson: true,
)
class Hour {
  final String time; // Время прогноза
  final int tempC; // Температура в Цельсиях
  final int isDay; // День (1) или ночь (0)
  final Condition condition; // Состояние погоды
  final double windKph; // Скорость ветра
  final int windDegree; // Направление ветра в градусах
  final String windDir; // Направление ветра (текст)
  final int pressureMb; // Давление
  final int precipMm; // Осадки
  final int snowCm; // Снег
  final int humidity; // Влажность
  final int cloud; // Облачность
  final double feelslikeC; // Ощущаемая температура
  final double windchillC; // Температура с учётом ветра
  final int heatindexC; // Индекс жары
  final double dewpointC; // Точка росы
  final int chanceOfRain; // Вероятность дождя
  final int chanceOfSnow; // Вероятность снега
  final int visKm; // Видимость
  final double gustKph; // Порывы ветра
  final int uv; // Уровень ультрафиолета

  Hour({
    required this.time,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.windDir,
    required this.pressureMb,
    required this.precipMm,
    required this.snowCm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.windchillC,
    required this.heatindexC,
    required this.dewpointC,
    required this.chanceOfRain,
    required this.chanceOfSnow,
    required this.visKm,
    required this.gustKph,
    required this.uv,
  });

  factory Hour.fromJson(Map<String, dynamic> json) =>
      _$HourFromJson(json);

  Map<String, dynamic> toJson() => _$HourToJson(this);
}
