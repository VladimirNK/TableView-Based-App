//
//  StorageManager.swift
//  MyPlaces (TableView App)
//
//  Created by User on 15.06.2022.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
        
    }
}
