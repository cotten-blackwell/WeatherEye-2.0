//
//  DailyWeatherItemTests.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import XCTest

class DailyWeatherItemTests: XCTestCase {
    var dailyWeather: DailyWeather?
    
    override func setUp() {
        super.setUp()

        let weatherDictionary: [String: AnyObject] = ["temperatureMax" : 78,
            "temperatureMin" : 67,
            "humidity" : 0.33,
            "precipProbability" : 0.10,
            "summary" : "Another beautiful day!",
            "icon" : "default.png",
            "sunriseTime" : 1446993823,
            "sunsetTime" : 1447031148,
            "time" : 1446993823 + 3600]
        dailyWeather = DailyWeather(dailyWeatherDict: weatherDictionary)
    }
    
    func testThatDailyWeatherItemHasAMaxTemperatureValue() {
        XCTAssertEqual(dailyWeather!.maxTemperature!, 78,
            "A daily high temperature value should have been set")
    }
    
    func testThatDailyWeatherItemHasAMinTemperatureValue() {
        XCTAssertEqual(dailyWeather!.minTemperature!, 67,
            "A daily low temperature value should have been set")
    }
    
    func testThatDailyWeatherItemHasAHumidityValue() {
        XCTAssertEqual(dailyWeather!.humidity!, 33,
            "A humidity value should have been set")
    }
    
    func testThatDailyWeatherItemHasAPrecipitationValue() {
        XCTAssertEqual(dailyWeather!.precipChance!, 10,
            "A precipitation probability should have been set")
    }
    
    func testThatDailyWeatherItemHasASummary() {
        XCTAssertEqual(dailyWeather!.summary!, "Another beautiful day!",
            "A summary should have been set")
    }
    
    func testThatDailyWeatherItemHasAnIcon() {
        let icon: UIImage? = UIImage(named: "default.png")
        XCTAssertEqual(dailyWeather!.icon!, icon!,
            "An icon should have been set")
    }

    func testThatDailyWeatherItemHasASunriseTime() {
        let sunriseTime: String? = self.dailyWeather?.timeStringFromUnixTime(1446993823)
        XCTAssertEqual(dailyWeather!.sunriseTime!, sunriseTime!,
            "An sunrise time should have been set")
    }
    
    func testThatDailyWeatherItemHasASunsetTime() {
        let sunsetTime: String? = self.dailyWeather?.timeStringFromUnixTime(1447031148)
        XCTAssertEqual(dailyWeather!.sunsetTime!, sunsetTime!,
            "An sunset time should have been set")
    }
    
    func testThatDailyWeatherItemHasADay() {
        let day: String? = self.dailyWeather?.dayStringFromTime(1446993823 + 3600)
        XCTAssertEqual(dailyWeather!.day!, day!,
            "A day of the week should have been set")
    }
    
    
    
}
