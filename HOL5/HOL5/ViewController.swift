//
//  ViewController.swift
//  HOL5
//
//  Created by admin on 2/4/20.
//  Copyright © 2020 Revature. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    struct Fruit: Codable{
        var item0: String
        var item1: String
        var item2: String
    }
    
    @IBOutlet weak var getFruits: UIButton!
    @IBOutlet weak var createFruit: UIButton!
    @IBOutlet weak var display: UITextView!
    
    @IBAction func getFruits(_ sender: UIButton) {
        if let fruits = getPlist(withName: "Fruits"){
            self.display.text = ("\(fruits)")
        }
    }
    
    @IBAction func createFruit(_ sender: UIButton) {
        addListAlert(controller: self)
    }
    
    func getPlist(withName name: String) ->[String]?
        {
            if let path = Bundle.main.path(forResource: "Fruits", ofType: "plist"),
                let xml = FileManager.default.contents(atPath: path)
            {
                return (try? PropertyListSerialization.propertyList(from:xml, options: .mutableContainersAndLeaves, format: nil)) as? [String]
            }
            return nil
        }
    
    func addListAlert (controller: UIViewController) {
        let alert = UIAlertController(title: "Adding fruit", message: "Add a fruit to the list.", preferredStyle: .alert)
        
        alert.addTextField()
        alert.addAction(UIAlertAction(title: "Add", style: .default, handler: {
            action in
            if let fruitName = alert.textFields?.first?.text {
                if !fruitName.isEmpty {
                    self.addToList(listItemName: fruitName)
                }
            }
        }))
        
        controller.present(alert, animated: true)
    }
    
    func addToList (listItemName listItem: String) {
        var list: [String]? = getPlist(withName: "Fruits")
        let encoder = PropertyListEncoder()
        list?.append(listItem)
        encoder.outputFormat = .xml
        let path = Bundle.main.bundleURL.appendingPathComponent("Fruits.plist")
        do {
            let data = try encoder.encode(list)
            try data.write(to: path)
        } catch {
            print(error)
        }
    }
    }





