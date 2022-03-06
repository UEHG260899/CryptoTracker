//
//  CoinInfoViewModel.swift
//  CryptoTracker
//
//  Created by Uriel Hernandez Gonzalez on 05/03/22.
//

import Foundation

class CoinInfoViewModel {
    var coindId: String?
    var title: Box<String?> = Box(nil)
    var coin: Box<Coin?> = Box(nil)
}

extension CoinInfoViewModel {
    func fetchCoinInfo(coinId: String) {
        CoinInfo.fetchCoinInfo(uuid: coinId) { response in
            guard let coin = response else {
                return
            }

            self.coin.value = coin.data!.coin
            self.title.value = coin.data!.coin.name
        }
    }
}
