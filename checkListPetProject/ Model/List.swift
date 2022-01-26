//
//  List.swift
//  checkListPetProject
//
//  Created by abbasov on 26.01.2022.
//

import Foundation

protocol ListProtocol {
    var name: String {get set}
    var itemsArray: [AnyObject] {get set}

    func addItem(item: AnyObject)
    func deleteItem(id: Int)
}

class ItemsList: ListProtocol {
    var name: String
    
    var itemsArray: [AnyObject] = []
    
    func addItem(item: AnyObject) {
        itemsArray.append(item)
    }
    
    func deleteItem(id: Int) {
        itemsArray.remove(at: id)
    }
    
    init(name: String) {
        self.name = name
    }
}

class ListOfLists: ListProtocol {
    var name = "ListOfLists"
    var itemsArray: [AnyObject] = []
    
    func addItem(item: AnyObject) {
        itemsArray.append(item)
    }
    
    func deleteItem(id: Int) {
        itemsArray.remove(at: id)
    }
    
    init(){}
}
