//
//  Response.swift
//
//  Created by ASK ONLINE  on 28/07/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Response: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let userdetail = "userdetail"
  }

  // MARK: Properties
  public var userdetail: Userdetail?

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
    userdetail <- map[SerializationKeys.userdetail]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = userdetail { dictionary[SerializationKeys.userdetail] = value.dictionaryRepresentation() }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.userdetail = aDecoder.decodeObject(forKey: SerializationKeys.userdetail) as? Userdetail
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(userdetail, forKey: SerializationKeys.userdetail)
  }

}
