//
//  ViewController.swift
//  Spalah_hw17_Closures
//
//  Created by Sergey Gaponov on 11/29/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var changeColorAction: ((UIColor) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeColorAction = { [weakSelf = self] color in
            weakSelf.view.backgroundColor = color
        }
    }
    
    // MARK: - IBActions
    @IBAction func changeColorAction(_ sender: UIButton) {
        
        guard let optChangeColorAction = changeColorAction,
            let color = sender.backgroundColor else { return }
        
        optChangeColorAction(color)
    }
}

