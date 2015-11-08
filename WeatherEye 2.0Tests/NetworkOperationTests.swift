//
//  NetworkOperationTests.swift
//  WeatherEye 2.0
//
//  Created by Cotten Blackwell on 11/8/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

import XCTest

class NetworkOperationTests: XCTestCase {
    var networkOperation: NetworkOperation?

    typealias JSONDictionaryCompletion = ([String: AnyObject]? -> Void)
    
    override func setUp() {
        super.setUp()
        
//        lazy var config: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()
//        lazy var session: NSURLSession = NSURLSession(configuration: self.config)
//        let queryURL: NSURL
//        
//        typealias JSONDictionaryCompletion = ([String: AnyObject]? -> Void)
//        
//        init(url: NSURL) {
//            self.queryURL = url
//        }
        
        let urlString: String = "https://api.forecast.io/forecast/18c35ade3544374fb5478b45bad9dc8e/"
        let url: NSURL = NSURL(string: urlString)!

        networkOperation = NetworkOperation(url: url)
    }
    
    func testThatNetworkOperationHasAURLValue() {
        let urlString2: String = "https://api.forecast.io/forecast/18c35ade3544374fb5478b45bad9dc8e/"
        let url2: NSURL = NSURL(string: urlString2)!
        
        XCTAssertEqual(self.networkOperation!.queryURL, url2,
            "A URL should have been set")
    }
    
//    func testThatNetworkOperationReturnsJSONDictionary() {
//        let returnedDictionary: JSONDictionaryCompletion =
//        XCTAssertEqual(self.networkOperation!.queryURL, url2,
//            "A JSON dictionary should have been returned")
//    }
//    
}
