//
//  ViewController.swift
//  ShoppingList
//
//  Created by Michael Linker on 2/8/19.
//  Copyright © 2019 Michael Linker. All rights reserved.
//
//lemme smoosh

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var NewItemText: UITextField!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    @IBAction func AddNewItem(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "Hello"
        return cell
    }

}

