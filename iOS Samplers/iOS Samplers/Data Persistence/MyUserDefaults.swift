//
//  MyUserDefaults.swift
//  iOS Samplers
//
//  Created by Chen Shi on 6/22/17.
//  Copyright © 2017 Chen Shi. All rights reserved.
//

import UIKit

class MyUserDefaults: NSObject {
    let defaults:UserDefaults
    override init() {
        defaults = UserDefaults.standard
      let registerDefaults: [String : Any] = ["key1":10, "key2":"value2", "key3":true]
        defaults.register(defaults: registerDefaults)
    }
    
    func loadFromUserDefaults() {
        let defaults = UserDefaults.standard
        print("key1: \(defaults.integer(forKey: "key1"))\nkey2: \(defaults.string(forKey: "key2") ?? "")\nkey3: \(defaults.bool(forKey: "key3"))")
    }
    
    func saveToUserDefaults() {
        defaults.set(15, forKey: "key1")
        defaults.synchronize()
    }
}
