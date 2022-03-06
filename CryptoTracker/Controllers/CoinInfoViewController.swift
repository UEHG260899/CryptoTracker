//
//  CoinInfoViewController.swift
//  CryptoTracker
//
//  Created by Uriel Hernandez Gonzalez on 05/03/22.
//

import UIKit
import Charts

class CoinInfoViewController: UIViewController {

    @IBOutlet weak var lineChart: LineChartView!
    
    let coinViewModel = CoinInfoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        coinViewModel.fetchCoinInfo(coinId: coinViewModel.coindId!)
    }

}

// MARK: - Extensions
private extension CoinInfoViewController {
    func bindData() {
        coinViewModel.title.bind { coinName in
            if coinName != nil {
                self.title = coinName
            }
        }
        coinViewModel.coin.bind { coin in
            if coin != nil {

            }
        }
    }

}
