//
//  DeViewController.swift
//  Delegate
//
//  Created by Neo on 2020/5/30.
//  Copyright © 2020 meican. All rights reserved.
//

import UIKit

protocol viewDelegate: class {
    func labelUp()
}

class BViewController: UIViewController {
    
    weak var viewA: AViewController?
    
    @IBOutlet weak var labelB: UILabel! {
        didSet {
            labelB.text = "0"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewC" {
            if let cvc = segue.destination as? CViewController {
                cvc.viewDelegate = self
                }
            }
        }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let text = Int(labelB.text ?? "0") {
            viewA?.titleLabel.text = "\(text + 1)"
        }
    }
}

extension BViewController: viewDelegate {
    func labelUp() {
        if let count = Int(labelB.text ?? "0") {
            labelB.text = "\(count + 1)"
        }
    }
}
