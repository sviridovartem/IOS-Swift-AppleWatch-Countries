//
//  DetailInterfaceController.swift
//  Countries
//
//  Created by Admin on 07.07.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {
    
    @IBOutlet weak var countryName: WKInterfaceLabel!
    @IBOutlet weak var capital: WKInterfaceLabel!
    @IBOutlet weak var currency: WKInterfaceLabel!
    @IBOutlet weak var flag: WKInterfaceImage!
    
    let capitals = ["Belgium":"Brussels",
                    "USA":"Washington DC",
                    "UK":"London",
                    "India":"New Delhi",
                    "China":"Beijing",
                    "Australia":"Canberra"]
    let currencies = ["Belgium":"EUR",
                      "USA":"USD",
                      "UK":"GBP",
                      "India":"INR",
                      "China":"CNY",
                      "Australia":"AUD"]
    let flags = ["Belgium":"be",
                 "USA":"us",
                 "UK":"gb",
                 "India":"in",
                 "China":"cn",
                 "Australia":"au"]

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let name = context as! String
        countryName.setText(name)
        capital.setText(capitals[name]!)
        currency.setText(currencies[name]!)
        flag.setImage(UIImage(named:flags[name]!))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
