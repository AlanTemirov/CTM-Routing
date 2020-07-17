//
//  SecondViewController.swift
//  CTMobile-Routing
//
//  Created by Alan on 14.07.2020.
//  Copyright © 2020 Alan Temirov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet private weak var detailLabel: UILabel!
    
    private var textInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = textInfo
    }

    func set(labelText: String) {
        textInfo = labelText
    }
    
}
