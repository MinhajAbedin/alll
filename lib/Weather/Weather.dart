import 'package:flutter/material.dart';

import 'package:weather/weather.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  late final WeatherFactory _wf; // Declare _wf variable

  Weather? _weather;

  @override
  void initState() {
    super.initState();
    // Initialize _wf with your API key
    _wf = WeatherFactory('0006cfc2b3e0a12c46a2c815a76d3fb0');

    _wf.currentWeatherByCityName("Dhaka").then((w) {
      setState(() {
        _weather = w;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    if (_weather == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: _locationHeader(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: _currentTemp(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: _weatherIcon(),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.orange,
              child: _extraInfo(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _locationHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Text(
        _weather?.areaName ?? "",
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _weatherIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "http://openweathermap.org/img/wn/${_weather?.weatherIcon}@4x.png"),
            ),
          ),
        ),
        Text(
          _weather?.weatherDescription ?? "",
          style: const TextStyle(
            color: Colors.tealAccent,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget _currentTemp() {
    return Text(
      "${_weather?.temperature?.celsius?.toStringAsFixed(0)}° C",
      style: const TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w500,
      ),
    );
  }
  
  Widget _extraInfo() {
    return Padding(
      
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Max: ${_weather?.tempMax?.celsius?.toStringAsFixed(0)}° C",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Min: ${_weather?.tempMin?.celsius?.toStringAsFixed(0)}° C",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Wind: ${_weather?.windSpeed?.toStringAsFixed(0)}m/s",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Humidity: ${_weather?.humidity?.toStringAsFixed(0)}%",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WeatherWidget(),
  ));
}
