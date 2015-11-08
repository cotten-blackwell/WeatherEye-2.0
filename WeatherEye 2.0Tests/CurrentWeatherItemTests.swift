//
//  CurrentWeatherItemTests.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import XCTest

class CurrentWeatherItemTests: XCTestCase {
    var currentWeather: CurrentWeather?
    
    override func setUp() {
        super.setUp()
        let weatherDictionary: [String: AnyObject] = ["temperature" : 99,
                                                        "humidity" : 0.88,
                                                        "precipProbability" : 1.00,
                                                        "summary" : "It's hot and wet!",
                                                        "icon" : "default.png"]
        currentWeather = CurrentWeather(weatherDictionary: weatherDictionary)
    }
    
    func testThatCurrentWeatherItemHasATemperatureValue() {
        XCTAssertEqual(currentWeather!.temperature!, 99,
            "A temperature value should have been set")
    }
    
    func testThatCurrentWeatherItemHasAHumidityValue() {
        XCTAssertEqual(currentWeather!.humidity!, 88,
            "A humidity value should have been set")
    }
    
    func testThatCurrentWeatherItemHasAPrecipitationValue() {
        XCTAssertEqual(currentWeather!.precipProbability!, 100,
            "A precipitation probability should have been set")
    }
    
    func testThatCurrentWeatherItemHasASummary() {
        XCTAssertEqual(currentWeather!.summary!, "It's hot and wet!",
            "A summary should have been set")
    }
    
    func testThatCurrentWeatherItemHasAnIcon() {
        let icon: UIImage? = UIImage(named: "default.png")
        XCTAssertEqual(currentWeather!.icon!, icon!,
            "An icon should have been set")
    }
    
    
}
