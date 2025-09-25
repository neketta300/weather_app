// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) =>
    WeatherModel(
      location: Location.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      current: Current.fromJson(
        json['current'] as Map<String, dynamic>,
      ),
      forecast: Forecast.fromJson(
        json['forecast'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'current': instance.current.toJson(),
      'forecast': instance.forecast.toJson(),
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
  name: json['name'] as String,
  region: json['region'] as String,
  country: json['country'] as String,
  lat: (json['lat'] as num).toDouble(),
  lon: (json['lon'] as num).toDouble(),
  tzId: json['tz_id'] as String,
  localtime: json['localtime'] as String,
);

Map<String, dynamic> _$LocationToJson(Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tzId,
      'localtime': instance.localtime,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
  tempC: (json['temp_c'] as num).toDouble(),
  isDay: (json['is_day'] as num).toInt(),
  condition: Condition.fromJson(
    json['condition'] as Map<String, dynamic>,
  ),
  windKph: (json['wind_kph'] as num).toDouble(),
  windDegree: (json['wind_degree'] as num).toInt(),
  windDir: json['wind_dir'] as String,
  pressureMb: (json['pressure_mb'] as num).toInt(),
  precipMm: (json['precip_mm'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
  cloud: (json['cloud'] as num).toInt(),
  feelslikeC: (json['feelslike_c'] as num).toDouble(),
  windchillC: (json['windchill_c'] as num).toDouble(),
  heatindexC: (json['heatindex_c'] as num).toDouble(),
  dewpointC: (json['dewpoint_c'] as num).toDouble(),
  visKm: (json['vis_km'] as num).toInt(),
  uv: (json['uv'] as num).toDouble(),
);

Map<String, dynamic> _$CurrentToJson(Current instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'wind_kph': instance.windKph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslikeC,
      'windchill_c': instance.windchillC,
      'heatindex_c': instance.heatindexC,
      'dewpoint_c': instance.dewpointC,
      'vis_km': instance.visKm,
      'uv': instance.uv,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) => Condition(
  text: json['text'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$ConditionToJson(Condition instance) =>
    <String, dynamic>{'text': instance.text, 'icon': instance.icon};

Forecast _$ForecastFromJson(Map<String, dynamic> json) => Forecast(
  forecastDay: (json['forecastday'] as List<dynamic>)
      .map((e) => ForecastDay.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ForecastToJson(
  Forecast instance,
) => <String, dynamic>{
  'forecastday': instance.forecastDay.map((e) => e.toJson()).toList(),
};

ForecastDay _$ForecastDayFromJson(Map<String, dynamic> json) =>
    ForecastDay(
      date: json['date'] as String,
      day: Day.fromJson(json['day'] as Map<String, dynamic>),
      astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => Hour.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastDayToJson(ForecastDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day.toJson(),
      'astro': instance.astro.toJson(),
      'hour': instance.hour.map((e) => e.toJson()).toList(),
    };

Day _$DayFromJson(Map<String, dynamic> json) => Day(
  maxtempC: (json['maxtemp_c'] as num).toDouble(),
  mintempC: (json['mintemp_c'] as num).toDouble(),
  avgtempC: (json['avgtemp_c'] as num).toInt(),
  maxwindKph: (json['maxwind_kph'] as num).toInt(),
  totalprecipMm: (json['totalprecip_mm'] as num).toInt(),
  totalsnowCm: (json['totalsnow_cm'] as num).toInt(),
  avgvisKm: (json['avgvis_km'] as num).toInt(),
  avghumidity: (json['avghumidity'] as num).toInt(),
  dailyChanceOfRain: (json['daily_chance_of_rain'] as num).toInt(),
  dailyChanceOfSnow: (json['daily_chance_of_snow'] as num).toInt(),
  condition: Condition.fromJson(
    json['condition'] as Map<String, dynamic>,
  ),
  uv: (json['uv'] as num).toDouble(),
);

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
  'maxtemp_c': instance.maxtempC,
  'mintemp_c': instance.mintempC,
  'avgtemp_c': instance.avgtempC,
  'maxwind_kph': instance.maxwindKph,
  'totalprecip_mm': instance.totalprecipMm,
  'totalsnow_cm': instance.totalsnowCm,
  'avgvis_km': instance.avgvisKm,
  'avghumidity': instance.avghumidity,
  'daily_chance_of_rain': instance.dailyChanceOfRain,
  'daily_chance_of_snow': instance.dailyChanceOfSnow,
  'condition': instance.condition.toJson(),
  'uv': instance.uv,
};

Astro _$AstroFromJson(Map<String, dynamic> json) => Astro(
  sunrise: json['sunrise'] as String,
  sunset: json['sunset'] as String,
  moonrise: json['moonrise'] as String,
  moonset: json['moonset'] as String,
  moonPhase: json['moon_phase'] as String,
);

Map<String, dynamic> _$AstroToJson(Astro instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
    };

Hour _$HourFromJson(Map<String, dynamic> json) => Hour(
  time: json['time'] as String,
  tempC: (json['temp_c'] as num).toInt(),
  isDay: (json['is_day'] as num).toInt(),
  condition: Condition.fromJson(
    json['condition'] as Map<String, dynamic>,
  ),
  windKph: (json['wind_kph'] as num).toDouble(),
  windDegree: (json['wind_degree'] as num).toInt(),
  windDir: json['wind_dir'] as String,
  pressureMb: (json['pressure_mb'] as num).toInt(),
  precipMm: (json['precip_mm'] as num).toInt(),
  snowCm: (json['snow_cm'] as num).toInt(),
  humidity: (json['humidity'] as num).toInt(),
  cloud: (json['cloud'] as num).toInt(),
  feelslikeC: (json['feelslike_c'] as num).toDouble(),
  windchillC: (json['windchill_c'] as num).toDouble(),
  heatindexC: (json['heatindex_c'] as num).toInt(),
  dewpointC: (json['dewpoint_c'] as num).toDouble(),
  chanceOfRain: (json['chance_of_rain'] as num).toInt(),
  chanceOfSnow: (json['chance_of_snow'] as num).toInt(),
  visKm: (json['vis_km'] as num).toInt(),
  gustKph: (json['gust_kph'] as num).toDouble(),
  uv: (json['uv'] as num).toInt(),
);

Map<String, dynamic> _$HourToJson(Hour instance) => <String, dynamic>{
  'time': instance.time,
  'temp_c': instance.tempC,
  'is_day': instance.isDay,
  'condition': instance.condition.toJson(),
  'wind_kph': instance.windKph,
  'wind_degree': instance.windDegree,
  'wind_dir': instance.windDir,
  'pressure_mb': instance.pressureMb,
  'precip_mm': instance.precipMm,
  'snow_cm': instance.snowCm,
  'humidity': instance.humidity,
  'cloud': instance.cloud,
  'feelslike_c': instance.feelslikeC,
  'windchill_c': instance.windchillC,
  'heatindex_c': instance.heatindexC,
  'dewpoint_c': instance.dewpointC,
  'chance_of_rain': instance.chanceOfRain,
  'chance_of_snow': instance.chanceOfSnow,
  'vis_km': instance.visKm,
  'gust_kph': instance.gustKph,
  'uv': instance.uv,
};
