//
//  ForecastTests.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import XCTest

class ForecastTests: XCTestCase {
    var forecast: Forecast?
    
    override func setUp() {
        super.setUp()

//        var currentWeather: CurrentWeather?
//        var weekly: [DailyWeather] = []
//        
//        init(weatherDictionary: [String: AnyObject]?) {
//            if let currentWeatherDictionary = weatherDictionary?["currently"] as? [String: AnyObject] {
//                currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
//            }
//            if let weeklyWeatherArray = weatherDictionary?["daily"]?["data"] as? [[String: AnyObject]] {
//                for dailyWeather in weeklyWeatherArray {
//                    let daily = DailyWeather(dailyWeatherDict: dailyWeather)
//                    weekly.append(daily)
//                }
//            }
//        }

        let currentWeatherDictionary: [String: AnyObject] = ["temperature" : 99,
            "humidity" : 0.88,
            "precipProbability" : 1.00,
            "summary" : "It's hot and wet!",
            "icon" : "default.png"]
        
        let day1WeatherDictionary: [String: AnyObject] = ["temperatureMax" : 78,
            "temperatureMin" : 67,
            "humidity" : 0.33,
            "precipProbability" : 0.10,
            "summary" : "Another beautiful day!",
            "icon" : "default.png",
            "sunriseTime" : 1446993823,
            "sunsetTime" : 1447031148,
            "time" : 1446993823 + 3600]
        
        let day2WeatherDictionary: [String: AnyObject] = ["temperatureMax" : 64,
            "temperatureMin" : 47,
            "humidity" : 0.22,
            "precipProbability" : 0.00,
            "summary" : "Cooler and drier -- a clear fall day!",
            "icon" : "default.png",
            "sunriseTime" : 1446993823 + 1800,
            "sunsetTime" : 1447031148 - 1800,
            "time" : 1446993823 + 3600]
    
        let weeklyWeatherArray: [AnyObject] = [day1WeatherDictionary, day2WeatherDictionary]
        
        let dailyWeatherDictionary: [String: AnyObject] = ["data" : weeklyWeatherArray]
        
        let weatherDictionary: [String: AnyObject] = ["currently" : currentWeatherDictionary,
                                                        "daily" : dailyWeatherDictionary]
        
        forecast = Forecast(weatherDictionary: weatherDictionary)
    }

    func testThatForecastHasCurrentWeatherAndCurrentTemp() {
        XCTAssertEqual(forecast!.currentWeather!.temperature!, 99,
            "The forecast should have the current weather with current temp")
    }
    
    func testThatForecastHasCurrentWeatherSummary() {
        XCTAssertEqual(forecast!.currentWeather!.summary!, "It's hot and wet!",
            "The forecast should have the current weather summary")
    }
    
    func testThatForecastHasDailyWeatherForTwoDays() {
        XCTAssertEqual(forecast!.weekly.count, 2,
            "The forecast should have daily weather info for two days")
    }
    
}
