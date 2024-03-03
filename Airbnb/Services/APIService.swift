//
//  APIService.swift
//  Airbnb
//
//  Created by Manvendu Pathak on 02/03/24.
//

import Foundation

final class APIService {
    init(){}
    
    struct Constant {
        static let APIUrl = URL(string: "https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/airbnb-listings/records?limit=100&refine=city%3A%22New%20York%22&refine=room_type%3A%22Entire%20home%2Fapt%22")
    }
}
 


