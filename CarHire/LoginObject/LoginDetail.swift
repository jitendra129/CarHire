//
//  LoginDetail.swift
//
//  Created by ASK ONLINE  on 28/07/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class LoginDetail: Mappable, NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let errorCode = "error_code"
    static let status = "status"
    static let response = "response"
  }

  // MARK: Properties
  public var errorCode: Int?
  public var status: Bool? = false
  public var response: Response?

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
    errorCode <- map[SerializationKeys.errorCode]
    status <- map[SerializationKeys.status]
    response <- map[SerializationKeys.response]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = errorCode { dictionary[SerializationKeys.errorCode] = value }
    dictionary[SerializationKeys.status] = status
    if let value = response { dictionary[SerializationKeys.response] = value.dictionaryRepresentation() }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.errorCode = aDecoder.decodeObject(forKey: SerializationKeys.errorCode) as? Int
    self.status = aDecoder.decodeBool(forKey: SerializationKeys.status)
    self.response = aDecoder.decodeObject(forKey: SerializationKeys.response) as? Response
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(errorCode, forKey: SerializationKeys.errorCode)
    aCoder.encode(status, forKey: SerializationKeys.status)
    aCoder.encode(response, forKey: SerializationKeys.response)
  }
    }
