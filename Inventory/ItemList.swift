//
//  ItemList.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//  Iricher Supera - A00237146

import Foundation

class ItemList{
    
    var items = [Item]()
    // Create URL and append file name for archiving
    var itemURL: URL = {
        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentDirectories.first!
        return documentDirectory.appendingPathComponent("item.archive")
    }()
    
    init(){
        do{
            //retrieve data from the filesystem
            let data = try Data(contentsOf: itemURL)
            items = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as! [Item]
        }catch let err{
            print(err)
        }
    }
    
    func addItem(item: Item){
        items.append(item)
    }
    
    func deleteItem(row: Int){
        items.remove(at: row)
    }
    
    func editItem(row: Int, item: Item) {
        items.remove(at: row)
        items.insert(item, at: row)
    }
    
    func moveItem(from: Int, to: Int){
        let newRow = items[from] // kushal helped me with this code
        items.remove(at: from)
        items.insert(newRow, at: to)
    }
    
    func save(){
        do{
            //save data to the filesystem
            let data = try NSKeyedArchiver.archivedData(withRootObject: items, requiringSecureCoding: false)
            try data.write(to: itemURL)
        }catch let err{
            print(err)
        }
        
    }
}
