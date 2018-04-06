//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by Kerry Nasta on 4/5/18.
//  Copyright © 2018 Kerry Nasta. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
