//
//  AirbnbListingResponse.swift
//  Airbnb
//
//  Created by Manvendu Pathak on 02/03/24.
//

import Foundation

struct AirbnbListingResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
