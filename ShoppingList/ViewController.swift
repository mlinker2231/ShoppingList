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
        var item1 = Item.init(name: "Milk", quantity: 3)
        var item2 = Item.init(name: "Eggs", quantity: 12)
        items = [item1,item2]
        var item3 = Item.init(name: "Bread", quantity: 7)
        items.append(item3)
    }
    @IBAction func AddNewItem(_ sender: Any) {
        if let enteredText = NewItemText.text, enteredText != "" {
            items.append(createNewItem(NameOfItem: enteredText,Quantity: 1))
            tableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") {
            let currentItemName = items[indexPath.row].name
            cell.textLabel?.text = currentItemName
            count += 1
            return cell
        }else {
            return UITableViewCell()
        }
    }
    func createNewItem(NameOfItem name: String,Quantity: Int) -> Item{
        var newItem = Item.init(name: name,quantity: Quantity)
        return newItem
    }
}

