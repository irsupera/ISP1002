//
//  DetailsViewController.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//  Iricher Supera - A00237146

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var SKUField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var dateField: UIDatePicker!
    
    var itemList: ItemList!
    var items: Item!
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set values for fields based from index/selected row
        if index != nil {
            nameField.text = itemList.items[index].name
            SKUField.text = itemList.items[index].SKU
            descField.text = itemList.items[index].descriptn
            dateField.date = itemList.items[index].dateAdded
        }
    }
    
    @IBAction func save(_ sender: Any) {
        // Prepare item and save in the list
        if !nameField.text!.isEmpty{
            let name = nameField.text!
            let sku = SKUField.text!
            let desc = descField.text!
            let date = dateField.date
            let item = Item(name: name, SKU: sku, descriptn: desc, dateAdded: date)
            if index == nil{
                // add new item
                itemList.addItem(item: item)
            } else {
                // edit existing item
                itemList.editItem(row: index , item: item)
                
            }
            navigationController?.popViewController(animated: true) // kushal helped me with this code
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
