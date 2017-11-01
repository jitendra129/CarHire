//
//  carUserDetail.swift
//
//  Created by ASK ONLINE  on 19/07/17
//  Copyright (c) Ask. All rights reserved.
//

import Foundation
import ObjectMapper

public final class carUserDetail: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let resturantName = "resturant_name"
    static let sidebarColor = "sidebar_color"
    static let resturantCurrency = "resturant_currency"
    static let resturantAddress = "resturant_address"
    static let codePhone = "code_phone"
    static let resturantPhone = "resturant_phone"
    static let subscriptionKey = "subscription_key"
    static let resturantMenuImage = "resturant_menu_image"
    static let resturantBackgroundImage = "resturant_background_image"
    static let subscriptionExpireDate = "subscription_expire_date"
    static let resturantColor = "resturant_color"
    static let resturantLogo = "resturant_logo"
    static let sidebarActiveColor = "sidebar_active_color"
    static let userId = "user_id"
    static let subscriptionValue = "subscription_value"
    static let resturantTagline = "resturant_tagline"
    static let resturantId = "resturant_id"
  }

  // MARK: Properties
  public var resturantName: String?
  public var sidebarColor: String?
  public var resturantCurrency: String?
  public var resturantAddress: String?
  public var codePhone: Int?
  public var resturantPhone: Int?
  public var subscriptionKey: String?
  public var resturantMenuImage: String?
  public var resturantBackgroundImage: String?
  public var subscriptionExpireDate: String?
  public var resturantColor: String?
  public var resturantLogo: String?
  public var sidebarActiveColor: String?
  public var userId: Int?
  public var subscriptionValue: Int?
  public var resturantTagline: String?
  public var resturantId: Int?

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public required init?(map: Map){

  }

  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
  public func mapping(map: Map) {
    resturantName <- map[SerializationKeys.resturantName]
    sidebarColor <- map[SerializationKeys.sidebarColor]
    resturantCurrency <- map[SerializationKeys.resturantCurrency]
    resturantAddress <- map[SerializationKeys.resturantAddress]
    codePhone <- map[SerializationKeys.codePhone]
    resturantPhone <- map[SerializationKeys.resturantPhone]
    subscriptionKey <- map[SerializationKeys.subscriptionKey]
    resturantMenuImage <- map[SerializationKeys.resturantMenuImage]
    resturantBackgroundImage <- map[SerializationKeys.resturantBackgroundImage]
    subscriptionExpireDate <- map[SerializationKeys.subscriptionExpireDate]
    resturantColor <- map[SerializationKeys.resturantColor]
    resturantLogo <- map[SerializationKeys.resturantLogo]
    sidebarActiveColor <- map[SerializationKeys.sidebarActiveColor]
    userId <- map[SerializationKeys.userId]
    subscriptionValue <- map[SerializationKeys.subscriptionValue]
    resturantTagline <- map[SerializationKeys.resturantTagline]
    resturantId <- map[SerializationKeys.resturantId]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = resturantName { dictionary[SerializationKeys.resturantName] = value }
    if let value = sidebarColor { dictionary[SerializationKeys.sidebarColor] = value }
    if let value = resturantCurrency { dictionary[SerializationKeys.resturantCurrency] = value }
    if let value = resturantAddress { dictionary[SerializationKeys.resturantAddress] = value }
    if let value = codePhone { dictionary[SerializationKeys.codePhone] = value }
    if let value = resturantPhone { dictionary[SerializationKeys.resturantPhone] = value }
    if let value = subscriptionKey { dictionary[SerializationKeys.subscriptionKey] = value }
    if let value = resturantMenuImage { dictionary[SerializationKeys.resturantMenuImage] = value }
    if let value = resturantBackgroundImage { dictionary[SerializationKeys.resturantBackgroundImage] = value }
    if let value = subscriptionExpireDate { dictionary[SerializationKeys.subscriptionExpireDate] = value }
    if let value = resturantColor { dictionary[SerializationKeys.resturantColor] = value }
    if let value = resturantLogo { dictionary[SerializationKeys.resturantLogo] = value }
    if let value = sidebarActiveColor { dictionary[SerializationKeys.sidebarActiveColor] = value }
    if let value = userId { dictionary[SerializationKeys.userId] = value }
    if let value = subscriptionValue { dictionary[SerializationKeys.subscriptionValue] = value }
    if let value = resturantTagline { dictionary[SerializationKeys.resturantTagline] = value }
    if let value = resturantId { dictionary[SerializationKeys.resturantId] = value }
    return dictionary
  }

}
