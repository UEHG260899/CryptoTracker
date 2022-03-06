//
//  CoinInfo.swift
//  CryptoTracker
//
//  Created by Uriel Hernandez Gonzalez on 05/03/22.
//

import Foundation

struct CoinInfo: Codable {
    let coin: Coin
    
    static func fetchCoinInfo(uuid: String, completion: @escaping (_ response: GenericResponse<CoinInfo>?) -> Void) {
        API.shared.fetchCoinData(uuid: uuid) { response in
            guard let response2 = response,
                  response2.status == "success",
                  response2.data != nil else {
                      completion(response)
                      return
                  }
            
            completion(response2)
        }
    }
}


