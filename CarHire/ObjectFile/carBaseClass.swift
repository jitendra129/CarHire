//
//  carBaseClass.swift
//
//  Created by ASK ONLINE  on 19/07/17
//  Copyright (c) Ask. All rights reserved.
//

import Foundation
import ObjectMapper

public final class carBaseClass: Mappable {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let status = "status"
    static let userDetail = "user_detail"
    static let msg = "msg"
  }

  // MARK: Properties
  public var status: Int?
  public var userDetail: carUserDetail?
  public var msg: String?

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
    status <- map[SerializationKeys.status]
    userDetail <- map[SerializationKeys.userDetail]
    msg <- map[SerializationKeys.msg]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = status { dictionary[SerializationKeys.status] = value }
    if let value = userDetail { dictionary[SerializationKeys.userDetail] = value.dictionaryRepresentation() }
    if let value = msg { dictionary[SerializationKeys.msg] = value }
    return dictionary
  }

}
