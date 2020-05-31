//
//  CViewController.swift
//  Delegate
//
//  Created by yukey on 31/5/20.
//  Copyright © 2020 meican. All rights reserved.
//

import UIKit

class CViewController: UIViewController {

    weak var viewDelegate: viewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        viewDelegate?.labelUp()
    }
}
