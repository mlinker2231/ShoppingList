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
    var items: [Item] = []
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        var item1 = Item.init(name: "Milk")
        var item2 = Item.init(name: "Eggs")
        items = [item1,item2]
    }
    @IBAction func AddNewItem(_ sender: Any) {
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = items[count].name
        count += 1
        return cell
    }
}

