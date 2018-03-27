//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Kerry Nasta on 3/23/18.
//  Copyright © 2018 Kerry Nasta. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    
    func getWeather(completed: @escaping () -> ()) {
        let weatherURL = urlBase + urlAPIKey + "/" + coordinates
        print(weatherURL)
        Alamofire.request(weatherURL).responseJSON { response in
            print(weatherURL)
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    print("***** temperature inside getWeather = \(temperature)")
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "°"
                } else {
                    print("could not return a temperature")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}
