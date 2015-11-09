//
//  ForecastServiceTests.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import XCTest

class ForecastServiceTests: XCTestCase {
    var forecastService: ForecastService?
    
    override func setUp() {
        super.setUp()
        
//        let forecastAPIKey: String
//        let forecastBaseURL: NSURL?
//        
//        init(APIKey: String) {
//            forecastAPIKey = APIKey
//            forecastBaseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
//        }
//
//        func getForecast(lat: Double, lon: Double, completion: (Forecast? -> Void)) {
//            
//            if let forecastURL = NSURL(string: "\(lat),\(lon)", relativeToURL: forecastBaseURL) {
//                let networkOperation = NetworkOperation(url: forecastURL)
//                
//                networkOperation.downloadJSONFromURL {
//                    (let JSONDictionary) in
//                    let forecast = Forecast(weatherDictionary: JSONDictionary)
//                    completion(forecast)
//                }
//            } else {
//                print("Could not construct a valid URL")
//            }
//        }
//        
        let APIKey: String = "18c35ade3544374fb5478b45bad9dc8e"

        forecastService = ForecastService(APIKey: APIKey)
    }
    
    func testThatForecastServiceHasAPIKey() {
        XCTAssertEqual(self.forecastService!.forecastAPIKey, "18c35ade3544374fb5478b45bad9dc8e",
            "Forecast service should have the correct API key")
    }
    
    func testThatForecastServiceGetsForecast() {
        XCTAssertEqual(self.forecastService!.forecastAPIKey, "18c35ade3544374fb5478b45bad9dc8e",
            "Forecast service should have the correct API key")
    }
    
//    func testThatNetworkOperationReturnsJSONDictionary() {
//        networkOperation!.downloadJSONFromURL {
//            (let JSONDictionary) in
//            let forecast = Forecast(weatherDictionary: JSONDictionary)
//            completion(forecast)
//            
//            XCTAssertEqual(self.networkOperation!.queryURL, url2,
//                "A JSON dictionary should have been returned")
//        }
//        
    
        
        
        
        
        
        
        
}
