//
//  ViewController.swift
//  Delegate
//
//  Created by Neo on 2020/5/30.
//  Copyright © 2020 meican. All rights reserved.
//

import UIKit


class AViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.text = "0"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewB" {
            if let bvc = segue.destination as? BViewController {
                bvc.viewA = self
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


