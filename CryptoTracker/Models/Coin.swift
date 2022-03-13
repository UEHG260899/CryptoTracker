//
//  Coin.swift
//  CryptoTracker
//
//  Created by Uriel Hernandez Gonzalez on 13/02/22.
//

import Foundation

struct Coin: Codable {
    let uuid: String!
    let symbol: String!
    let name: String!
    let decription: String!
    let color: String!
    let iconUrl: String!
    let websiteUrl: String!
    let supply: Supply!
    let numberOfMarkets: Int64!
    let numberOfExchanges: Int16!
    let lastDayVolume: String!
    let marketCap: String!
    let priceAt: Int64!
    let change: String!
    let rank: Int16!
    let sparkLine: [String]!
    let allTimeHigh: AllTimeHigh!
    let price: String!
    
    enum CodingKeys: String, CodingKey {
        case uuid, symbol, name, decription, color, iconUrl, websiteUrl, supply, numberOfMarkets, numberOfExchanges,
             lastDayVolume = "24hVolume",
             sparkLine = "sparkline",
             marketCap, price, priceAt, change, rank, allTimeHigh
    }
    
}

struct Supply: Codable {
    let confirmed: Bool!
    let total: String!
    let circulating: String!
}

struct AllTimeHigh: Codable {
    let price: String!
    let timestamp: Int64!
}
