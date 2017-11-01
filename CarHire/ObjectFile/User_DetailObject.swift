//
//  User_DetailObject.swift
//  CarHire
//
//  Created by ASK ONLINE  on 19/07/17.
//  Copyright © 2017 ASK ONLINE. All rights reserved.
//
import Foundation
import ObjectMapper

class User_DetailObject: Mappable {
    var codePhone: String?
    var restaurentAdd:Int?
    var restaurentBg:String?
    var restaurentcolor: Double?
    var restaurentCur:String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    private func unwrapedDescription(value: Any?) -> String {
        if let value = value {
            return "\(value)"
        }
        return "[no data]"
    }
    
 
    
    func mapping(map: Map) {
        codePhone           <- map["code_phone"]
        restaurentAdd            <- map["resturant_address"]
        restaurentBg         <- map["resturant_background_image"]
        restaurentcolor          <- map["resturant_color"]
        restaurentCur            <- map["resturant_currency"]
    }
}
