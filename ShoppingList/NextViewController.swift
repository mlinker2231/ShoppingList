//
//  NextViewController.swift
//  ShoppingList
//
//  Created by Michael Linker on 2/13/19.
//  Copyright © 2019 Michael Linker. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    var textForLabel = ""
    
    @IBOutlet weak var Text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Text.text = textForLabel
    }
    


}
