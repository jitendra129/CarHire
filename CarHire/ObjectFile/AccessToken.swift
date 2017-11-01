//
//  AccessToken.swift
//
//  Created by ASK ONLINE  on 26/07/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class AccessToken: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let tokenType = "token_type"
    static let accessToken = "access_token"
    static let expiresIn = "expires_in"
  }

  // MARK: Properties
  public var tokenType: String?
  public var accessToken: String?
  public var expiresIn: Int?

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
    tokenType <- map[SerializationKeys.tokenType]
    accessToken <- map[SerializationKeys.accessToken]
    expiresIn <- map[SerializationKeys.expiresIn]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = tokenType { dictionary[SerializationKeys.tokenType] = value }
    if let value = accessToken { dictionary[SerializationKeys.accessToken] = value }
    if let value = expiresIn { dictionary[SerializationKeys.expiresIn] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.tokenType = aDecoder.decodeObject(forKey: SerializationKeys.tokenType) as? String
    self.accessToken = aDecoder.decodeObject(forKey: SerializationKeys.accessToken) as? String
    self.expiresIn = aDecoder.decodeObject(forKey: SerializationKeys.expiresIn) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(tokenType, forKey: SerializationKeys.tokenType)
    aCoder.encode(accessToken, forKey: SerializationKeys.accessToken)
    aCoder.encode(expiresIn, forKey: SerializationKeys.expiresIn)
  }

}
