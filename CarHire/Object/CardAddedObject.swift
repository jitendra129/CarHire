//
//  CardAddedObject.swift
//  CarHire
//
//  Created by ASK ONLINE  on 05/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//
import Foundation

class CardAddedObject: NSObject {
    var cExpDate: String = ""
    var cHolderName: String = ""
    var cName: String = ""
    var cNumber: String = ""
    var cImg: String = ""
    
    func instance(fromDictionary aDictionary: [AnyHashable: Any]) -> CardAddedObject {
        let instance = CardAddedObject()
        instance.setAttributesFromDictionary(aDictionary)
        return instance
    }
    
    func setAttributesFromDictionary(_ aDictionary: [AnyHashable: Any]) {
        if !(aDictionary is [AnyHashable: Any]) {
            return
        }
        cNumber = (aDictionary["c_num"] as? String)!
        cHolderName = (aDictionary["ch_name"] as? String)!
        cExpDate = (aDictionary["c_edate"] as? String)!
        cImg = (aDictionary["c_img"] as? String)!
        cName = (aDictionary["c_name"] as? String)!

    }
}
