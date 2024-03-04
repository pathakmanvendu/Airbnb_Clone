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
    
    
    public func getListings(completion: @escaping (Result<[AirbnbListing], Error>) -> Void){
        guard let url = Constant.APIUrl else {
            return
        }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data,error == nil else{
                if let error {
                    completion(.failure(error))
                }
                return
            }
            
            do {
                let response = try JSONDecoder().decode(AirbnbListingResponse.self, from: data)
                completion(.success(response.results))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
}
 


