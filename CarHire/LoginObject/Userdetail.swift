//
//  Userdetail.swift
//
//  Created by ASK ONLINE  on 28/07/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Userdetail:NSObject, Mappable, NSCoding{

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let userEmail = "user_email"
    static let userLanguageId = "user_language_id"
    static let userAddress = "user_address"
    static let userDepartmentId = "user_department_id"
    static let userPhone = "user_phone"
    static let userUsername = "user_username"
    static let userZipcode = "user_zipcode"
    static let userPassword = "user_password"
    static let userCountrycode = "user_countrycode"
    static let userBranchId = "user_branch_id"
    static let userCompanyId = "user_company_id"
    static let userEmpcode = "user_empcode"
    static let userStatus = "user_status"
    static let userImage = "user_image"
    static let userAttachment = "user_attachment"
    static let userId = "user_id"
    static let userName = "user_name"
    static let userType = "user_type"
  }

  // MARK: Properties
  public var userEmail: String?
  public var userLanguageId: String?
  public var userAddress: String?
  public var userDepartmentId: String?
  public var userPhone: String?
  public var userUsername: String?
  public var userZipcode: String?
  public var userPassword: String?
  public var userCountrycode: String?
  public var userBranchId: String?
  public var userCompanyId: String?
  public var userEmpcode: String?
  public var userStatus: String?
  public var userImage: String?
  public var userAttachment: String?
  public var userId: String?
  public var userName: String?
  public var userType: String?

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
    userEmail <- map[SerializationKeys.userEmail]
    userLanguageId <- map[SerializationKeys.userLanguageId]
    userAddress <- map[SerializationKeys.userAddress]
    userDepartmentId <- map[SerializationKeys.userDepartmentId]
    userPhone <- map[SerializationKeys.userPhone]
    userUsername <- map[SerializationKeys.userUsername]
    userZipcode <- map[SerializationKeys.userZipcode]
    userPassword <- map[SerializationKeys.userPassword]
    userCountrycode <- map[SerializationKeys.userCountrycode]
    userBranchId <- map[SerializationKeys.userBranchId]
    userCompanyId <- map[SerializationKeys.userCompanyId]
    userEmpcode <- map[SerializationKeys.userEmpcode]
    userStatus <- map[SerializationKeys.userStatus]
    userImage <- map[SerializationKeys.userImage]
    userAttachment <- map[SerializationKeys.userAttachment]
    userId <- map[SerializationKeys.userId]
    userName <- map[SerializationKeys.userName]
    userType <- map[SerializationKeys.userType]
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = userEmail { dictionary[SerializationKeys.userEmail] = value }
    if let value = userLanguageId { dictionary[SerializationKeys.userLanguageId] = value }
    if let value = userAddress { dictionary[SerializationKeys.userAddress] = value }
    if let value = userDepartmentId { dictionary[SerializationKeys.userDepartmentId] = value }
    if let value = userPhone { dictionary[SerializationKeys.userPhone] = value }
    if let value = userUsername { dictionary[SerializationKeys.userUsername] = value }
    if let value = userZipcode { dictionary[SerializationKeys.userZipcode] = value }
    if let value = userPassword { dictionary[SerializationKeys.userPassword] = value }
    if let value = userCountrycode { dictionary[SerializationKeys.userCountrycode] = value }
    if let value = userBranchId { dictionary[SerializationKeys.userBranchId] = value }
    if let value = userCompanyId { dictionary[SerializationKeys.userCompanyId] = value }
    if let value = userEmpcode { dictionary[SerializationKeys.userEmpcode] = value }
    if let value = userStatus { dictionary[SerializationKeys.userStatus] = value }
    if let value = userImage { dictionary[SerializationKeys.userImage] = value }
    if let value = userAttachment { dictionary[SerializationKeys.userAttachment] = value }
    if let value = userId { dictionary[SerializationKeys.userId] = value }
    if let value = userName { dictionary[SerializationKeys.userName] = value }
    if let value = userType { dictionary[SerializationKeys.userType] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.userEmail = aDecoder.decodeObject(forKey: SerializationKeys.userEmail) as? String
    self.userLanguageId = aDecoder.decodeObject(forKey: SerializationKeys.userLanguageId) as? String
    self.userAddress = aDecoder.decodeObject(forKey: SerializationKeys.userAddress) as? String
    self.userDepartmentId = aDecoder.decodeObject(forKey: SerializationKeys.userDepartmentId) as? String
    self.userPhone = aDecoder.decodeObject(forKey: SerializationKeys.userPhone) as? String
    self.userUsername = aDecoder.decodeObject(forKey: SerializationKeys.userUsername) as? String
    self.userZipcode = aDecoder.decodeObject(forKey: SerializationKeys.userZipcode) as? String
    self.userPassword = aDecoder.decodeObject(forKey: SerializationKeys.userPassword) as? String
    self.userCountrycode = aDecoder.decodeObject(forKey: SerializationKeys.userCountrycode) as? String
    self.userBranchId = aDecoder.decodeObject(forKey: SerializationKeys.userBranchId) as? String
    self.userCompanyId = aDecoder.decodeObject(forKey: SerializationKeys.userCompanyId) as? String
    self.userEmpcode = aDecoder.decodeObject(forKey: SerializationKeys.userEmpcode) as? String
    self.userStatus = aDecoder.decodeObject(forKey: SerializationKeys.userStatus) as? String
    self.userImage = aDecoder.decodeObject(forKey: SerializationKeys.userImage) as? String
    self.userAttachment = aDecoder.decodeObject(forKey: SerializationKeys.userAttachment) as? String
    self.userId = aDecoder.decodeObject(forKey: SerializationKeys.userId) as? String
    self.userName = aDecoder.decodeObject(forKey: SerializationKeys.userName) as? String
    self.userType = aDecoder.decodeObject(forKey: SerializationKeys.userType) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(userEmail, forKey: SerializationKeys.userEmail)
    aCoder.encode(userLanguageId, forKey: SerializationKeys.userLanguageId)
    aCoder.encode(userAddress, forKey: SerializationKeys.userAddress)
    aCoder.encode(userDepartmentId, forKey: SerializationKeys.userDepartmentId)
    aCoder.encode(userPhone, forKey: SerializationKeys.userPhone)
    aCoder.encode(userUsername, forKey: SerializationKeys.userUsername)
    aCoder.encode(userZipcode, forKey: SerializationKeys.userZipcode)
    aCoder.encode(userPassword, forKey: SerializationKeys.userPassword)
    aCoder.encode(userCountrycode, forKey: SerializationKeys.userCountrycode)
    aCoder.encode(userBranchId, forKey: SerializationKeys.userBranchId)
    aCoder.encode(userCompanyId, forKey: SerializationKeys.userCompanyId)
    aCoder.encode(userEmpcode, forKey: SerializationKeys.userEmpcode)
    aCoder.encode(userStatus, forKey: SerializationKeys.userStatus)
    aCoder.encode(userImage, forKey: SerializationKeys.userImage)
    aCoder.encode(userAttachment, forKey: SerializationKeys.userAttachment)
    aCoder.encode(userId, forKey: SerializationKeys.userId)
    aCoder.encode(userName, forKey: SerializationKeys.userName)
    aCoder.encode(userType, forKey: SerializationKeys.userType)
  }
    
   public func saveToUserDefault() {
        let data = NSKeyedArchiver.archivedData(withRootObject: self)
        UserDefaults.standard.set(data, forKey: "LoginDetail")
        UserDefaults.standard.synchronize()
    }
    
    public func getFromUserDefault() -> Any {
        let data: Data? = UserDefaults.standard.object(forKey: "LoginDetail") as? Data
        return NSKeyedUnarchiver.unarchiveObject(with: data!)!
    }

}
