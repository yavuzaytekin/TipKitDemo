//
//  ViewController.swift
//  TipKitDemoUIKit
//
//  Created by Yavuz Aytekin on 7.09.2024.
//

import UIKit
import TipKit

class ViewController: UIViewController {
    @IBAction func inlineBtn(_ sender: Any) {
        let viewController = InlineViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func popoverBtn(_ sender: Any) {
        let viewController = PopoverViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

