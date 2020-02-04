//
//  readingAPlist.swift
//  HOL5
//
//  Created by admin on 2/4/20.
//  Copyright © 2020 Revature. All rights reserved.
//

import Foundation
class reading {
    func getPlist(withName name: String) ->[String]?
    {
        if let path = Bundle.main.path(forResource: "Fruits", ofType: "plist"),
            let xml = FileManager.default.contents(atPath: path)
        {
            return (try? PropertyListSerialization.propertyList(from:xml, options: .mutableContainersAndLeaves, format: nil)) as? [String]
        }
        return nil
    }
}

if let fruits = getPlist(withName: "Fruits"){print(fruits)}
