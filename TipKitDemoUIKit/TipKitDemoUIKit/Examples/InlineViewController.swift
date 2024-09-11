//
//  InlineViewController.swift
//  TipKitDemoUIKit
//
//  Created by Yavuz Aytekin on 9.09.2024.
//

import UIKit
import TipKit

class InlineViewController: UIViewController {
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [helloUserLabel, favoriteBtn])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.spacing = 4
        return stackView
    }()
    
    lazy var helloUserLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello user"
        label.textColor = .black
        return label
    }()
    
    lazy var favoriteBtn: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Favorite", for: .normal)
        button.setImage(.init(systemName: "star"), for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(favoriteBtnAction), for: .touchUpInside)
        return button
    }()
    
    lazy var tipView: TipUIView = {
        let view = TipUIView(favoriteTip)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var tipObservationTask: Task<Void, Never>?
    private var favoriteTip = FavoriteTip(id: "InlineView")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showFavoriteTipIfNeeded()
    }
    
   override func viewWillDisappear(_ animated: Bool) {
       super.viewWillDisappear(animated)

       tipObservationTask?.cancel()
       tipObservationTask = nil
   }
    
    func configure() {
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainStackView)
        view.addConstraints([
            mainStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func showFavoriteTipIfNeeded() {
        tipObservationTask = tipObservationTask ?? Task { @MainActor in
            for await shouldDisplay in favoriteTip.shouldDisplayUpdates {
                if shouldDisplay {
                    mainStackView.insertArrangedSubview(tipView, at: 1)
                } else {
                    tipView.removeFromSuperview()
                }
            }
        }
    }

    @objc func favoriteBtnAction() {
        favoriteTip.invalidate(reason: .actionPerformed)
    }
}
