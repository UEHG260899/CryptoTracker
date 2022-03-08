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
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var favoriteBtn: UIButton!
    
    let coinViewModel = CoinInfoViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        bindData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        coinViewModel.fetchCoinInfo(coinId: coinViewModel.coindId!)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        favoriteBtn.layer.cornerRadius = favoriteBtn.frame.height / 2
    }

}

// MARK: - Extensions
private extension CoinInfoViewController {

    func setupUI() {
        cardView.layer.cornerRadius = 20
        cardView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        cardView.layer.shadowColor = UIColor(named: "MainColor")?.cgColor
        cardView.layer.shadowRadius = 10
        cardView.layer.shadowOpacity = 0.3
        cardView.layer.shadowOffset = CGSize(width: 0, height: -10)
        favoriteBtn.layer.shadowColor = UIColor(named: "MainColor")?.cgColor
        favoriteBtn.layer.shadowRadius = 10
        favoriteBtn.layer.shadowOpacity = 0.3
        favoriteBtn.layer.shadowOffset = .zero
    }

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
