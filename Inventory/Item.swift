//
//  Item.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//  Iricher Supera - A00237146

import Foundation

class Item: NSObject, NSCoding{
  
    var name: String
    var SKU: String
    var descriptn: String
    var dateAdded: Date
    
    init(name: String, SKU: String, descriptn: String, dateAdded: Date){
        self.name = name
        self.SKU = SKU
        self.descriptn = descriptn
        self.dateAdded = dateAdded
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
        SKU = coder.decodeObject(forKey: "SKU") as! String
        descriptn = coder.decodeObject(forKey: "descriptn") as! String
        dateAdded = coder.decodeObject(forKey: "dateAdded") as! Date
        super.init()
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(SKU, forKey: "SKU")
        coder.encode(descriptn, forKey: "descriptn")
        coder.encode(dateAdded, forKey: "dateAdded")
    }
    
}
