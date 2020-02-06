//
//  ViewController.swift
//  HOL6
//
//  Created by admin on 2/6/20.
//  Copyright © 2020 Revature. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var addressOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clearAction(_ sender: UIButton) {
         Defaults.clearUserData()
    }
    @IBAction func viewAction(_ sender: UIButton) {
        let details = Defaults.getNameAndAddress()
        print(details.name)
        print(details.address)
    }
    @IBAction func createAction(_ sender: UIButton) {
        Defaults.save(nameOutlet.text!, address: addressOutlet.text!)
    }
}
struct Defaults {
    static let (nameKey, addressKey) = ("name", "address")
    static let userSessionKey = "com.save.usersession"
    private static let userDefault = UserDefaults.standard
    /**
     - Description - It's using for the passing and fetching user values from the UserDefaults.
     */
    struct UserDetails {
        let name: String
        let address: String
        init(_ json: [String: String]) {
            self.name = json[nameKey] ?? ""
            self.address =  json[addressKey] ?? ""
        }
    }
    /**
     -    Description - Saving user details
     -    Inputs - name `String` & address `String`
     */
    static func save(_ name: String, address: String) {
        userDefault.set([nameKey: name, addressKey: address], forKey: userSessionKey)
    }
    /**
     -    Description - Fetching Values via Model `UserDetails` you can use it based on your uses.
     -    Output - `UserDetails` model
     */
    static func getNameAndAddress() -> UserDetails {
        return UserDetails((userDefault.value(forKey: userSessionKey) as? [String: String]) ?? [:])
    }
    /**
     -    Description - Clearing user details for the user key `com.save.usersession`
     */
    static func clearUserData(){
        userDefault.removeObject(forKey: userSessionKey)
    }
}
