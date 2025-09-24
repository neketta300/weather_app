import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/core/theme/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hagen, Gerrmany',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineMedium,
                    ),
                    Text(
                      'Sunday, 24 April',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),

                Spacer(),
                SvgPicture.asset('assets/icons/sunny.svg', width: 28),
              ],
            ),
            Text(
              '9°',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>
                    ForecastCard(
                      pathToIcon: 'assets/icons/cloudy.svg',
                      temperature: 10,
                      time: 'Сайчас',
                    ),
              ),
            ),

            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 20,
              crossAxisSpacing: 50,
              childAspectRatio: 3,
              children: [
                AboutData(label: 'Рассвет', headline: '06:30'),
                AboutData(label: 'Закат', headline: '19:45'),
                AboutData(label: 'Влажность', headline: '82%'),
                AboutData(label: 'Давление', headline: '1012 hPa'),
                AboutData(label: 'Ветер', headline: '5 м/с'),
                AboutData(label: 'UV-индекс', headline: '3'),
                AboutData(label: 'Облачность', headline: '40%'),
                AboutData(label: 'Видимость', headline: '10 км'),
              ],
            ),

            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>
                    NextDaysForecastData(
                      minTemp: 5,
                      maxTemp: 13,
                      date: '24 Сен',
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NextDaysForecastData extends StatelessWidget {
  const NextDaysForecastData({
    super.key,
    required this.minTemp,
    required this.maxTemp,
    required this.date,
  });
  final int minTemp;
  final int maxTemp;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Text(date, style: Theme.of(context).textTheme.labelSmall),
          Text(
            '$minTemp°/$maxTemp°',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}

class AboutData extends StatelessWidget {
  const AboutData({
    super.key,
    required this.label,
    required this.headline,
  });

  final String label;
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelMedium),
        Text(
          headline,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}

class ForecastCard extends StatelessWidget {
  const ForecastCard({
    super.key,
    required this.pathToIcon,
    required this.temperature,
    required this.time,
  });
  final String pathToIcon;
  final String time;
  final int temperature;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Text(time, style: Theme.of(context).textTheme.labelSmall),
          SvgPicture.asset(
            pathToIcon,
            width: 28,
            colorFilter: ColorFilter.mode(hintColor, BlendMode.srcIn),
          ),
          SizedBox(height: 1),
          Text(
            '$temperature°',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
